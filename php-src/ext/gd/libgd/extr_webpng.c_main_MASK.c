#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  outFn ;
typedef  TYPE_1__* gdImagePtr ;
struct TYPE_17__ {scalar_t__ trueColor; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int gdAlphaOpaque ; 
 int FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 int FUNC12 (TYPE_1__*,int,int) ; 
 int FUNC13 (TYPE_1__*) ; 
 int FUNC14 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC17 (TYPE_1__*,int) ; 
 int FUNC18 (TYPE_1__*) ; 
 int FUNC19 (TYPE_1__*) ; 
 int FUNC20 (int) ; 
 int FUNC21 (int) ; 
 int FUNC22 (int) ; 
 int FUNC23 (int) ; 
 int FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (char*,...) ; 
 scalar_t__ FUNC27 (char*,char*) ; 
 int /*<<< orphan*/  FUNC28 (char*,int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC29 (char*,char*) ; 
 int /*<<< orphan*/  FUNC30 (char*) ; 

int
FUNC31 (int argc, char **argv)
{
  FILE *in;
  FILE *out;
  char outFn[20];
  int useStdinStdout = 0;

  /* Declare our image pointer */
  gdImagePtr im = 0;
  int i;
  /* We'll clear 'no' once we know the user has made a
     reasonable request. */
  int no = 1;
  /* We'll set 'write' once we know the user's request
     requires that the image be written back to disk. */
  int write = 0;
  /* C programs always get at least one argument; we want at
     least one more (the image), more in practice. */
  if (argc < 2 || !FUNC29 (argv[1], "--help"))
    {
      no = 1;
      goto usage;
    }

  /* The last argument should be the image. Open the file. */
  if (FUNC29 ("-", argv[argc - 1]) == 0)
    {				/* - is synonymous with STDIN */
      useStdinStdout = 1;
      in = stdin;
    }
  else
    {
      in = FUNC3 (argv[argc - 1], "rb");
    }
  if (!in)
    {
      FUNC4 (stderr,
	       "Error: can't open file %s.\n", argv[argc - 1]);
      FUNC1 (1);
    }
  /* Now load the image. */
  im = FUNC9 (in);
  FUNC2 (in);
  /* If the load failed, it must not be a PNG file. */
  if (!im)
    {
      FUNC4 (stderr,
	       "Error: %s is not a valid PNG file.\n", argv[argc - 1]);
      FUNC1 (1);
    }
  /* Consider each argument in turn. */
  for (i = 1; (i < (argc - 1)); i++)
    {
      /* -i turns on and off interlacing. */
      if (!FUNC29 (argv[i], "--help"))
	{
	  /* Every program should use this for help! :) */
	  no = 1;
	  goto usage;
	}
      else if (!FUNC29 (argv[i], "-i"))
	{
	  if (i == (argc - 2))
	    {
	      FUNC4 (stderr,
		       "Error: -i specified without y or n.\n");
	      no = 1;
	      goto usage;
	    }
	  if (!FUNC29 (argv[i + 1], "y"))
	    {
	      /* Set interlace. */
	      FUNC15 (im, 1);
	    }
	  else if (!FUNC29 (argv[i + 1], "n"))
	    {
	      /* Clear interlace. */
	      FUNC15 (im, 0);
	    }
	  else
	    {
	      FUNC4 (stderr,
		       "Error: -i specified without y or n.\n");
	      no = 1;
	      goto usage;
	    }
	  i++;
	  no = 0;
	  write = 1;
	}
      else if (!FUNC29 (argv[i], "-t"))
	{
	  /* Set transparent index (or none). */
	  int index;
	  if (i == (argc - 2))
	    {
	      FUNC4 (stderr,
		       "Error: -t specified without a color table index.\n");
	      no = 1;
	      goto usage;
	    }
	  if (!FUNC29 (argv[i + 1], "none"))
	    {
	      /* -1 means not transparent. */
	      FUNC7 (im, -1);
	    }
	  else
	    {
	      /* OK, get an integer and set the index. */
	      index = FUNC0 (argv[i + 1]);
	      FUNC7 (im, index);
	    }
	  i++;
	  write = 1;
	  no = 0;
	}
      else if (!FUNC29 (argv[i], "-l"))
	{
	  /* List the colors in the color table. */
	  int j;
	  if (!im->trueColor)
	    {
	      /* Tabs used below. */
	      FUNC26 ("Index	Red	Green	Blue Alpha\n");
	      for (j = 0; (j < FUNC8 (im)); j++)
		{
		  /* Use access macros to learn colors. */
		  FUNC26 ("%d	%d	%d	%d	%d\n",
			  j,
			  FUNC17 (im, j),
			  FUNC14 (im, j),
			  FUNC6 (im, j),
			  FUNC5 (im, j));
		}
	    }
	  else
	    {
	      FUNC26 ("Truecolor image, no palette entries to list.\n");
	    }
	  no = 0;
	}
      else if (!FUNC29 (argv[i], "-d"))
	{
	  /* Output dimensions, etc. */
	  int t;
	  FUNC26 ("Width: %d Height: %d Colors: %d\n",
		  FUNC18 (im), FUNC19 (im),
		  FUNC8 (im));
	  t = FUNC13 (im);
	  if (t != (-1))
	    {
				FUNC26 ("First 100%% transparent index: %d\n", t);
	    }
	  else
	    {
	      /* -1 means the image is not transparent. */
				FUNC26 ("First 100%% transparent index: none\n");
	    }
	  if (FUNC11 (im))
	    {
	      FUNC26 ("Interlaced: yes\n");
	    }
	  else
	    {
	      FUNC26 ("Interlaced: no\n");
	    }
	  no = 0;
	}
		else if (!FUNC29(argv[i], "-a"))
		{
			int maxx, maxy, x, y, alpha, pix, nalpha = 0;

			maxx = FUNC18(im);
			maxy = FUNC19(im);

			FUNC26("alpha channel information:\n");

			if (im->trueColor)	{
				for (y = 0; y < maxy; y++)	{
					for (x = 0; x < maxx; x++)	{
						pix = FUNC12(im, x, y);
						alpha = FUNC20(pix);

						if (alpha > gdAlphaOpaque)	{
							/* Use access macros to learn colors. */
							FUNC26 ("%d	%d	%d	%d\n",
									FUNC23(pix),
									FUNC22(pix),
									FUNC21(pix),
									alpha);
							nalpha++;
						}

					}
				}
			}
			else
				FUNC26("NOT a true color image\n");
			no = 0;
			FUNC26("%d alpha channels\n", nalpha);

		}
      else
	{
	  FUNC4 (stderr, "Unknown argument: %s\n", argv[i]);
	  break;
	}
    }
usage:
  if (no)
    {
      /* If the command failed, output an explanation. */
      FUNC4 (stderr,
	  "Usage: webpng [-i y|n ] [-l] [-t index|none ] [-d] pngname.png\n"

	       "  -i [y|n]   Turns on/off interlace\n"
	       "  -l         Prints the table of color indexes\n"
	       "  -t [index] Set the transparent color to the specified index (0-255 or \"none\")\n"
	       "  -d         Reports the dimensions and other characteristics of the image.\n"
				"  -a         Prints all alpha channels that are not 100%% opaque.\n"
	       "\n"
	       "If you specify '-' as the input file, stdin/stdout will be used input/output.\n"
	);
    }
  if (write)
    {
      if (useStdinStdout)
	{
	  out = stdout;
	}
      else
	{
	  /* Open a temporary file. */

	  /* "temp.tmp" is not good temporary filename. */
	  FUNC28 (outFn, sizeof(outFn), "webpng.tmp%d", FUNC24 ());
	  out = FUNC3 (outFn, "wb");

	  if (!out)
	    {
	      FUNC4 (stderr,
		       "Unable to write to %s -- exiting\n", outFn);
	      FUNC1 (1);
	    }
	}

      /* Write the new PNG. */
      FUNC16 (im, out);

      if (!useStdinStdout)
	{
	  FUNC2 (out);
	  /* Erase the old PNG. */
	  FUNC30 (argv[argc - 1]);
	  /* Rename the new to the old. */
	  if (FUNC27 (outFn, argv[argc - 1]) != 0)
	    {
	      FUNC25 ("rename");
	      FUNC1 (1);
	    }
	}
    }
  /* Delete the image from memory. */
  if (im)
    {
      FUNC10 (im);
    }
  /* All's well that ends well. */
  return 0;
}