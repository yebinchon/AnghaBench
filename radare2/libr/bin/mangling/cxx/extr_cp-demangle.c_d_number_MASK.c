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
struct d_info {int dummy; } ;

/* Variables and functions */
 char INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (struct d_info*,int) ; 
 char FUNC2 (struct d_info*) ; 

__attribute__((used)) static int
FUNC3 (struct d_info *di)
{
  int negative;
  char peek;
  int ret;

  negative = 0;
  peek = FUNC2 (di);
  if (peek == 'n')
    {
      negative = 1;
      FUNC1 (di, 1);
      peek = FUNC2 (di);
    }

  ret = 0;
  while (1)
    {
      if (! FUNC0 (peek))
	{
	  if (negative)
	    ret = - ret;
	  return ret;
	}
      if (ret > ((INT_MAX - (peek - '0')) / 10))
        return -1;
      ret = ret * 10 + peek - '0';
      FUNC1 (di, 1);
      peek = FUNC2 (di);
    }
}