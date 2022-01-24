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
 int /*<<< orphan*/  GRUB_ERR_BAD_NUMBER ; 
 int /*<<< orphan*/  GRUB_ERR_OUT_OF_RANGE ; 
 unsigned long long FUNC0 (unsigned long long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (char const) ; 
 unsigned long FUNC3 (char const) ; 

unsigned long long
FUNC4 (const char *str, char **end, int base)
{
  unsigned long long num = 0;
  int found = 0;

  /* Skip white spaces.  */
  while (*str && FUNC2 (*str))
    str++;

  /* Guess the base, if not specified. The prefix `0x' means 16, and
     the prefix `0' means 8.  */
  if (str[0] == '0')
    {
      if (str[1] == 'x')
	{
	  if (base == 0 || base == 16)
	    {
	      base = 16;
	      str += 2;
	    }
	}
      else if (base == 0 && str[1] >= '0' && str[1] <= '7')
	base = 8;
    }

  if (base == 0)
    base = 10;

  while (*str)
    {
      unsigned long digit;

      digit = FUNC3 (*str) - '0';
      if (digit > 9)
	{
	  digit += '0' - 'a' + 10;
	  if (digit >= (unsigned long) base)
	    break;
	}

      found = 1;

      /* NUM * BASE + DIGIT > ~0ULL */
      if (num > FUNC0 (~0ULL - digit, base, 0))
	{
	  FUNC1 (GRUB_ERR_OUT_OF_RANGE, "overflow is detected");
	  return ~0ULL;
	}

      num = num * base + digit;
      str++;
    }

  if (! found)
    {
      FUNC1 (GRUB_ERR_BAD_NUMBER, "unrecognized number");
      return 0;
    }

  if (end)
    *end = (char *) str;

  return num;
}