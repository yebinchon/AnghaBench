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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC7 (int argc, char **argv)
{
  gdImagePtr im;
  FILE *in, *out;
  if (argc != 3)
    {
      FUNC3 (stderr, "Usage: pngtogd filename.png filename.gd\n");
      FUNC0 (1);
    }
  in = FUNC2 (argv[1], "rb");
  if (!in)
    {
      FUNC3 (stderr, "Input file does not exist!\n");
      FUNC0 (1);
    }
  im = FUNC4 (in);
  FUNC1 (in);
  if (!im)
    {
      FUNC3 (stderr, "Input is not in PNG format!\n");
      FUNC0 (1);
    }
  out = FUNC2 (argv[2], "wb");
  if (!out)
    {
      FUNC3 (stderr, "Output file cannot be written to!\n");
      FUNC5 (im);
      FUNC0 (1);
    }
  FUNC6 (im, out);
  FUNC1 (out);
  FUNC5 (im);

  return 0;
}