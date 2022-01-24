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

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 int FUNC2 (char*) ; 

int
FUNC3 (int argc, char* argv[])
{
  int  justPrint = 0;
  int  idx;
  int  returnCode;

  for (idx = 1; idx < argc; idx++)
  {
    FUNC0 (argv [idx]);

    if (justPrint)
    {
      FUNC1 ("remove %s\n", argv [idx]);
    }
    else
    {
      returnCode = FUNC2 (argv [idx]);
      if (returnCode != 0 && errno != ENOENT)
      {
      /* Continue even if there is errors */
#if 0
        printf ("Rmdir of %s failed.  Rmdir returned %d.\n",
                argv [idx],
                returnCode);
        return  returnCode;
#endif
      }
    }
  }

  return  0;
}