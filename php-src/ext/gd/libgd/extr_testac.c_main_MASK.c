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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,double,int,int,char*) ; 

int
FUNC7 (int argc, char *argv[])
{
  /* Input and output files */
  FILE *in;
  FILE *out;

  /* Input image */
  gdImagePtr im_in = 0;

  /* Colors */
  int lightBlue;

  if (argc != 2)
    {
      FUNC3 (stderr, "Usage: testac filename.png\n");
      FUNC0 (1);
    }
  /* Load original PNG, which should contain alpha channel
     information. We will use it in two ways: preserving it
     literally, for use with compatible browsers, and
     compositing it ourselves against a background of our
     choosing (alpha blending). We'll change its size
     and try creating palette versions of it. */
  in = FUNC2 (argv[1], "rb");
  if (!in)
    {
      FUNC3 (stderr, "Can't load %s.\n", argv[1]);
      FUNC0 (1);
    }
  else
    {
      im_in = FUNC4 (in);
      FUNC1 (in);
    }
  FUNC6 (im_in, 1.0, 0, 0, "noblending-fullsize-truecolor.png");
  FUNC6 (im_in, 1.0, 1, 0, "blending-fullsize-truecolor.png");
  FUNC6 (im_in, 0.5, 0, 0, "noblending-halfsize-truecolor.png");
  FUNC6 (im_in, 0.5, 1, 0, "blending-halfsize-truecolor.png");
  FUNC6 (im_in, 2.0, 0, 0, "noblending-doublesize-truecolor.png");
  FUNC6 (im_in, 2.0, 1, 0, "blending-doublesize-truecolor.png");
  FUNC6 (im_in, 1.0, 0, 1, "noblending-fullsize-palette.png");
  FUNC6 (im_in, 1.0, 1, 1, "blending-fullsize-palette.png");
  FUNC6 (im_in, 0.5, 0, 1, "noblending-halfsize-palette.png");
  FUNC6 (im_in, 0.5, 1, 1, "blending-halfsize-palette.png");
  FUNC6 (im_in, 2.0, 0, 1, "noblending-doublesize-palette.png");
  FUNC6 (im_in, 2.0, 1, 1, "blending-doublesize-palette.png");
  FUNC5 (im_in);
  return 0;
}