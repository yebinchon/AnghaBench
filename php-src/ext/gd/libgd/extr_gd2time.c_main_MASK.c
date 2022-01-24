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
 int /*<<< orphan*/  FUNC7 (char*,int,int,...) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9 (int argc, char **argv)
{
  gdImagePtr im;
  FILE *in;
  int x, y, w, h;
  int c;
  int i;
  int t0;

  if (argc != 7)
    {
      FUNC4 (stderr, "Usage: gd2time filename.gd count x y w h\n");
      FUNC1 (1);
    }

  c = FUNC0 (argv[2]);
  x = FUNC0 (argv[3]);
  y = FUNC0 (argv[4]);
  w = FUNC0 (argv[5]);
  h = FUNC0 (argv[6]);

  FUNC7 ("Extracting %d times from (%d, %d), size is %dx%d\n", c, x, y, w, h);

  t0 = FUNC8 (0);
  for (i = 0; i < c; i++)
    {
      in = FUNC3 (argv[1], "rb");
      if (!in)
	{
	  FUNC4 (stderr, "Input file does not exist!\n");
	  FUNC1 (1);
	}

      im = FUNC5 (in, x, y, w, h);
      FUNC2 (in);

      if (!im)
	{
	  FUNC4 (stderr, "Error reading source file!\n");
	  FUNC1 (1);
	}
      FUNC6 (im);
    };
  t0 = FUNC8 (0) - t0;
  FUNC7 ("%d seconds to extract (& destroy) %d times\n", t0, c);

  return 0;
}