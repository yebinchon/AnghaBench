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
typedef  int /*<<< orphan*/  xtensa_insnbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static int
FUNC6 (const xtensa_insnbuf insn)
{
  switch (FUNC1 (insn))
    {
    case 12:
      switch (FUNC0 (insn))
	{
	case 0:
	  return 33; /* movi.n */
	case 1:
	  switch (FUNC5 (insn))
	    {
	    case 0:
	      return 28; /* beqz.n */
	    case 1:
	      return 29; /* bnez.n */
	    }
	  break;
	}
      break;
    case 13:
      switch (FUNC2 (insn))
	{
	case 0:
	  return 32; /* mov.n */
	case 15:
	  switch (FUNC4 (insn))
	    {
	    case 0:
	      return 35; /* ret.n */
	    case 1:
	      return 15; /* retw.n */
	    case 2:
	      return 325; /* break.n */
	    case 3:
		    if (FUNC3 (insn) == 0) {
			    return 34; /* nop.n */
		    }
		    break;
	    case 6:
		    if (FUNC3 (insn) == 0) {
			    return 30; /* ill.n */
		    }
		    break;
	    }
	  break;
	}
      break;
    }
  return 0;
}