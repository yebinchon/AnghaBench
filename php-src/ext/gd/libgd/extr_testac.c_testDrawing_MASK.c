#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  gdImagePtr ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,double,double) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 double FUNC8 (int /*<<< orphan*/ ) ; 
 double FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int) ; 

void
FUNC13 (
	      gdImagePtr im_in,
	      double scale,
	      int blending,
	      int palette,
	      char *filename)
{
  gdImagePtr im_out;
  FILE *out;
  /* Create output image. */
  im_out = FUNC4 ((int) (FUNC8 (im_in) * scale),
				   (int) (FUNC9 (im_in) * scale));
  /*
     Request alpha blending. This causes future
     drawing operations to perform alpha channel blending
     with the background, resulting in an opaque image.
     Without this call, pixels in the foreground color are
     copied literally, *including* the alpha channel value,
     resulting in an output image which is potentially
     not opaque. This flag can be set and cleared as often
     as desired. */
  FUNC2 (im_out, blending);

  /* Flood with light blue. */
  FUNC6 (im_out, (int) (FUNC8 (im_in) * scale / 2),
	       (int) (FUNC9 (im_in) * scale / 2),
	       FUNC12 (192, 192, 255));
  /* Copy the source image. Alpha blending should result in
     compositing against red. With blending turned off, the
     browser or viewer will composite against its preferred
     background, or, if it does not support an alpha channel,
     we will see the original colors for the pixels that
     ought to be transparent or semitransparent. */
  FUNC3 (im_out, im_in,
			0, 0,
			0, 0,
       (int) (FUNC8 (im_in) * scale), (int) (FUNC9 (im_in) * scale),
			FUNC8 (im_in), FUNC9 (im_in));
  /* Write PNG */
  out = FUNC1 (filename, "wb");

  /* If this image is the result of alpha channel blending,
     it will not contain an interesting alpha channel itself.
     Save a little file size by not saving the alpha channel.
     Otherwise the file would typically be slightly larger. */
  FUNC10 (im_out, !blending);

  /* If requested, convert from truecolor to palette. */
  if (palette)
    {
      /* Dithering, 256 colors. */
      FUNC11 (im_out, 1, 256);
    }

  FUNC7 (im_out, out);
  FUNC0 (out);

  FUNC5 (im_out);
}