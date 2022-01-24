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
typedef  int /*<<< orphan*/  regex_t ;

/* Variables and functions */
 int REG_EXTENDED ; 
 int REG_ICASE ; 
 int REG_NOSUB ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ xlines ; 

__attribute__((used)) static int FUNC2(regex_t *regex, const char *filter)
{
	int r = FUNC1(regex, filter, REG_NOSUB | REG_EXTENDED | REG_ICASE);

	if (r != 0 && filter && filter[0] != '\0')
		FUNC0(xlines - 1, 0, "regex error: %d\n", r);

	return r;
}