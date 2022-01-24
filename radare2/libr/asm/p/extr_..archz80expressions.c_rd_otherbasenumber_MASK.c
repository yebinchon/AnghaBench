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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const) ; 
 scalar_t__ FUNC2 (unsigned char const) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int FUNC4 (char const**,int /*<<< orphan*/ *,char) ; 
 size_t sp ; 
 TYPE_1__* stack ; 
 int /*<<< orphan*/  stderr ; 
 char FUNC5 (unsigned char) ; 
 int verbose ; 

__attribute__((used)) static int
FUNC6 (const char **p, int *valid, int print_errors)
{
  char c;
  if (verbose >= 6)
    FUNC0 (stderr,
	     "%5d (0x%04x): Starting to read basenumber (string=%s).\n",
	     stack[sp].line, addr, *p);
  (*p)++;
  if (!**p)
    {
      if (valid)
	*valid = 0;
      else if (print_errors)
	FUNC3 (1, "unexpected end of line after `@'\n");
      return 0;
    }
  if (**p == '0' || !FUNC1 ((const unsigned char)**p))
    {
      if (valid)
	*valid = 0;
      else if (print_errors)
	FUNC3 (1, "base must be between 1 and z\n");
      return 0;
    }
  c = **p;
  (*p)++;
  if (FUNC2 ((const unsigned char)**p))
    return FUNC4 (p, NULL, FUNC5 ((unsigned char)c) - 'a' + 1);
  return FUNC4 (p, NULL, c - '0' + 1);
}