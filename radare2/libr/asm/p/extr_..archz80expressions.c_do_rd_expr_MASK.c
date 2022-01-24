#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int line; } ;

/* Variables and functions */
 int addr ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 int FUNC3 (char const**,int*,int,int*,int) ; 
 size_t sp ; 
 TYPE_1__* stack ; 
 int /*<<< orphan*/  stderr ; 
 int verbose ; 

__attribute__((used)) static int
FUNC4 (const char **p, char delimiter, int *valid, int level, int *check,
	    int print_errors)
{
  /* read an expression. delimiter can _not_ be '?' */
  int result = 0;
  if (verbose >= 6)
    FUNC1 (stderr,
	     "%5d (0x%04x): Starting to read expression "
	     "(string=%s, delimiter=%c).\n", stack[sp].line, addr, *p,
	     delimiter ? delimiter : ' ');
  *p = FUNC0 (*p);
  if (!**p || **p == delimiter)
    {
      if (valid)
	*valid = 0;
      else if (print_errors)
	FUNC2 (1, "expression expected (not %s)\n", *p);
      return 0;
    }
  result = FUNC3 (p, valid, level, check, print_errors);
  *p = FUNC0 (*p);
  if (**p == '?')
    {
      *check = 0;
      (*p)++;
      if (result)
	{
	  result = FUNC4 (p, ':', valid, level, check, print_errors);
	  if (**p)
	    (*p)++;
	  FUNC4 (p, delimiter, valid, level, check, print_errors);
	}
      else
	{
	  FUNC4 (p, ':', valid, level, check, print_errors);
	  if (**p)
	    (*p)++;
	  result = FUNC4 (p, delimiter, valid, level, check,
			       print_errors);
	}
    }
  *p = FUNC0 (*p);
  if (**p && **p != delimiter)
    {
      if (valid)
	*valid = 0;
      else if (print_errors)
	FUNC2 (1, "junk at end of expression: %s\n", *p);
    }
  if (verbose >= 7)
    {
      FUNC1 (stderr, "%5d (0x%04x): rd_expr returned %d (%04x).\n",
	       stack[sp].line, addr, result, result);
      if (valid && !*valid)
	FUNC1 (stderr, "%5d (0x%04x): Returning invalid result.\n",
		 stack[sp].line, addr);
    }
  return result;
}