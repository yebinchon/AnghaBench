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
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC8 (int argc, char **argv)
{
  gdImagePtr im;
  FILE *in, *out;
  int cs, fmt;

  if (argc != 5)
    {
      FUNC4 (stderr, "Usage: pngtogd2 filename.png filename.gd2 cs fmt\n");
      FUNC4 (stderr, "    where cs is the chunk size\n");
      FUNC4 (stderr, "          fmt is 1 for raw, 2 for compressed\n");
      FUNC1 (1);
    }
  in = FUNC3 (argv[1], "rb");
  if (!in)
    {
      FUNC4 (stderr, "Input file does not exist!\n");
      FUNC1 (1);
    }
  im = FUNC5 (in);
  FUNC2 (in);
  if (!im)
    {
      FUNC4 (stderr, "Input is not in PNG format!\n");
      FUNC1 (1);
    }
  out = FUNC3 (argv[2], "wb");
  if (!out)
    {
      FUNC4 (stderr, "Output file cannot be written to!\n");
      FUNC6 (im);
      FUNC1 (1);
    }
  cs = FUNC0 (argv[3]);
  fmt = FUNC0 (argv[4]);
  FUNC7 (im, out, cs, fmt);
  FUNC2 (out);
  FUNC6 (im);

  return 0;
}