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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC9 (int argc, char **argv)
{
  gdImagePtr im;
  FILE *in, *out;
  int x, y, w, h;

  if (argc != 7)
    {
      FUNC4 (stderr, "Usage: gdparttopng filename.gd filename.png x y w h\n");
      FUNC1 (1);
    }
  in = FUNC3 (argv[1], "rb");
  if (!in)
    {
      FUNC4 (stderr, "Input file does not exist!\n");
      FUNC1 (1);
    }

  x = FUNC0 (argv[3]);
  y = FUNC0 (argv[4]);
  w = FUNC0 (argv[5]);
  h = FUNC0 (argv[6]);

  FUNC8 ("Extracting from (%d, %d), size is %dx%d\n", x, y, w, h);

  im = FUNC5 (in, x, y, w, h);
  FUNC2 (in);
  if (!im)
    {
      FUNC4 (stderr, "Input is not in GD2 format!\n");
      FUNC1 (1);
    }
  out = FUNC3 (argv[2], "wb");
  if (!out)
    {
      FUNC4 (stderr, "Output file cannot be written to!\n");
      FUNC6 (im);
      FUNC1 (1);
    }
#ifdef HAVE_LIBPNG
  gdImagePng (im, out);
#else
  FUNC4(stderr, "No PNG library support.\n");
#endif
  FUNC2 (out);
  FUNC6 (im);

  return 0;
}