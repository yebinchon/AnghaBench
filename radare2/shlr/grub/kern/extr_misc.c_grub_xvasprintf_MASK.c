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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  grub_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  PREALLOC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

char *
FUNC3 (const char *fmt, va_list ap)
{
  grub_size_t s, as = PREALLOC_SIZE;
  char *ret;

  while (1)
    {
      ret = FUNC1 (as + 1);
      if (!ret)
	return NULL;

      s = FUNC2 (ret, as, fmt, ap);
      if (s <= as)
	return ret;

      FUNC0 (ret);
      as = s;
    }
}