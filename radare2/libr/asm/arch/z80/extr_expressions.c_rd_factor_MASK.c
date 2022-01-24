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
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (char const**,int*,int,int*,int) ; 
 size_t sp ; 
 TYPE_1__* stack ; 
 int /*<<< orphan*/  stderr ; 
 int verbose ; 

__attribute__((used)) static int
FUNC4 (const char **p, int *valid, int level, int *check, int print_errors)
{
  /* read a factor of an expression */
  int result;
  if (verbose >= 6)
    FUNC1 (stderr, "%5d (0x%04x): Starting to read factor (string=%s).\n",
	     stack[sp].line, addr, *p);
  result = FUNC3 (p, valid, level, check, print_errors);
  *p = FUNC0 (*p);
  while (**p == '*' || **p == '/')
    {
      *check = 0;
      if (**p == '*')
	{
	  (*p)++;
	  result *= FUNC3 (p, valid, level, check, print_errors);
	}
      else if (**p == '/')
	{
	  (*p)++;
      int value = FUNC3 (p, valid, level, check, print_errors);
      if (value == 0){ 
        FUNC2 (1, "division by zero\n");
        return -1;
      }
      result /= value;
	}
      *p = FUNC0 (*p);
    }
  if (verbose >= 7)
    FUNC1 (stderr, "%5d (0x%04x): rd_factor returned %d (%04x).\n",
	     stack[sp].line, addr, result, result);
  return result;
}