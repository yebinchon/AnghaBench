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
 int /*<<< orphan*/  GRUB_ERR_BAD_FILENAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 char* FUNC3 (char const*,char) ; 

char *
FUNC4 (const char *name)
{
  if (name[0] == '(')
    {
      char *p = FUNC3 (name, ')');
      char *ret;

      if (! p)
	{
	  FUNC0 (GRUB_ERR_BAD_FILENAME, "missing `)'");
	  return 0;
	}

      ret = (char *) FUNC1 (p - name);
      if (! ret)
	return 0;

      FUNC2 (ret, name + 1, p - name - 1);
      ret[p - name - 1] = '\0';
      return ret;
    }

  return 0;
}