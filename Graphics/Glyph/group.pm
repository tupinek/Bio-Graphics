package Bio::Graphics::Glyph::group;

use strict;
use vars '@ISA';
use Bio::Graphics::Glyph::segmented_keyglyph;
@ISA = 'Bio::Graphics::Glyph::segmented_keyglyph';

# group sets connector to 'dashed'
sub connector {
  my $self = shift;
  return $self->SUPER::connector(@_) if $self->all_callbacks;
  return 'dashed';
}

#sub layout_width {
#  my $self = shift;
#  my @parts = $self->parts or return $self->SUPER::layout_width;
#  return $self->{layout_width} if exists $self->{layout_width};
#  my $max = $self->SUPER::layout_width;
#  foreach (@parts) {
#    my $part_width = $_->layout_width;
#    $max = $part_width if $part_width > $max;
#  }
#  return $self->{layout_width} = $max;
#}

1;

__END__

=head1 NAME

Bio::Graphics::Glyph::group - The "group" glyph

=head1 SYNOPSIS

  See L<Bio::Graphics::Panel> and L<Bio::Graphics::Glyph>.

=head1 DESCRIPTION

This glyph is used internally by Bio::Graphics::Panel for laying out
groups of glyphs that move in concert.  It should not be used
explicitly.

=head1 BUGS

Please report them.

=head1 SEE ALSO

L<Ace::Sequence>, L<Ace::Sequence::Feature>, L<Bio::Graphics::Panel>,
L<Bio::Graphics::Track>, L<Bio::Graphics::Glyph::anchored_arrow>,
L<Bio::Graphics::Glyph::arrow>,
L<Bio::Graphics::Glyph::box>,
L<Bio::Graphics::Glyph::primers>,
L<Bio::Graphics::Glyph::segments>,
L<Bio::Graphics::Glyph::toomany>,
L<Bio::Graphics::Glyph::transcript>,

=head1 AUTHOR

Lincoln Stein <lstein@cshl.org>

Copyright (c) 2001 Cold Spring Harbor Laboratory

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.  See DISCLAIMER.txt for
disclaimers of warranty.

=cut
