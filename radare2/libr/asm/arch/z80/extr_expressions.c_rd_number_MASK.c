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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int,...) ; 
 size_t sp ; 
 TYPE_1__* stack ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const) ; 
 int verbose ; 

__attribute__((used)) static int
FUNC4 (const char **p, const char **endp, int base)
{
  int result = 0, i;
  char *c, num[] = "0123456789abcdefghijklmnopqrstuvwxyz";
  if (verbose >= 6)
    FUNC1 (stderr, "%5d (0x%04x): Starting to read number of base %d"
	     "(string=%s).\n", stack[sp].line, addr, base, *p);
  num[base] = '\0';
  *p = FUNC0 (*p);
  while (**p && (c = FUNC2 (num, FUNC3 ((const unsigned char)**p))))
    {
      i = c - num;
      if (verbose >= 7)
	FUNC1 (stderr, "%5d (0x%04x): Digit found:%1x.\n", stack[sp].line,
		 addr, i);
      result = result * base + i;
      (*p)++;
    }
  if (endp)
    *endp = *p;
  *p = FUNC0 (*p);
  if (verbose >= 7)
    FUNC1 (stderr, "%5d (0x%04x): rd_number returned %d (%04x).\n",
	     stack[sp].line, addr, result, result);
  return result;
}