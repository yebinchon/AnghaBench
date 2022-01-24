#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int x; int y; } ;
typedef  TYPE_1__ gdPoint ;
typedef  scalar_t__ gdImagePtr ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  gdFontGiant ; 
 int /*<<< orphan*/  gdFontSmall ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int,int,int,int,int,int) ; 
 int FUNC4 (scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC15 (scalar_t__) ; 
 int FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int*,int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ ,int,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int /*<<< orphan*/ ,int,int,unsigned char*,int) ; 
 int gdStyledBrushed ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC21 (void)
{
  /* Input and output files */
  FILE *in;
  FILE *out;

  /* Input and output images */
  gdImagePtr im_in = 0, im_out = 0;

  /* Brush image */
  gdImagePtr brush;

  /* Color indexes */
  int white;
  int blue;
  int red;
  int green;

  /* Points for polygon */
  gdPoint points[3];

  /* Create output image, 256 by 256 pixels, true color. */
  im_out = FUNC8 (256, 256);
  /* First color allocated is background. */
  white = FUNC4 (im_out, 255, 255, 255);

  /* Set transparent color. */
  FUNC5 (im_out, white);

  /* Try to load demoin.png and paste part of it into the
     output image. */
  in = FUNC1 ("demoin.png", "rb");
  if (!in)
    {
      FUNC2 (stderr, "Can't load source image; this demo\n");
      FUNC2 (stderr, "is much more impressive if demoin.png\n");
      FUNC2 (stderr, "is available.\n");
      im_in = 0;
    }
  else
    {
      im_in = FUNC7 (in);
      FUNC0 (in);
      /* Now copy, and magnify as we do so */
      FUNC6 (im_out, im_in,
			  32, 32, 0, 0, 192, 192, 255, 255);
    }
  red = FUNC4 (im_out, 255, 0, 0);
  green = FUNC4 (im_out, 0, 255, 0);
  blue = FUNC4 (im_out, 0, 0, 255);
  /* Rectangle */
  FUNC13 (im_out, 16, 16, 240, 16, green);
  FUNC13 (im_out, 240, 16, 240, 240, green);
  FUNC13 (im_out, 240, 240, 16, 240, green);
  FUNC13 (im_out, 16, 240, 16, 16, green);
  /* Circle */
  FUNC3 (im_out, 128, 128, 60, 20, 0, 720, blue);
  /* Arc */
  FUNC3 (im_out, 128, 128, 40, 40, 90, 270, blue);
  /* Flood fill: doesn't do much on a continuously
     variable tone jpeg original. */
  FUNC10 (im_out, 8, 8, blue);
  /* Polygon */
  points[0].x = 64;
  points[0].y = 0;
  points[1].x = 0;
  points[1].y = 128;
  points[2].x = 128;
  points[2].y = 128;
  FUNC11 (im_out, points, 3, green);
  /* Brush. A fairly wild example also involving a line style! */
  if (im_in)
    {
      int style[8];
      brush = FUNC8 (16, 16);
      FUNC6 (brush, im_in,
			  0, 0, 0, 0,
			  FUNC15 (brush), FUNC16 (brush),
			  FUNC15 (im_in), FUNC16 (im_in));
      FUNC17 (im_out, brush);
      /* With a style, so they won't overprint each other.
         Normally, they would, yielding a fat-brush effect. */
      style[0] = 0;
      style[1] = 0;
      style[2] = 0;
      style[3] = 0;
      style[4] = 0;
      style[5] = 0;
      style[6] = 0;
      style[7] = 1;
      FUNC18 (im_out, style, 8);
      /* Draw the styled, brushed line */
      FUNC13 (im_out, 0, 255, 255, 0, gdStyledBrushed);
    }
  /* Text */
  FUNC19 (im_out, gdFontGiant, 32, 32,
		 (unsigned char *) "hi", red);
  FUNC20 (im_out, gdFontSmall, 64, 64,
		   (unsigned char *) "hi", red);
  /* Make output image interlaced (progressive, in the case of JPEG) */
  FUNC12 (im_out, 1);
  out = FUNC1 ("demoout.png", "wb");
  /* Write PNG */
  FUNC14 (im_out, out);
  FUNC0 (out);
  FUNC9 (im_out);
  if (im_in)
    {
      FUNC9 (im_in);
    }
  return 0;
}