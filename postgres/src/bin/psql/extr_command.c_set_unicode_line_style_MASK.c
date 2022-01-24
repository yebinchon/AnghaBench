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
typedef  int /*<<< orphan*/  unicode_linestyle ;

/* Variables and functions */
 int /*<<< orphan*/  UNICODE_LINESTYLE_DOUBLE ; 
 int /*<<< orphan*/  UNICODE_LINESTYLE_SINGLE ; 
 scalar_t__ FUNC0 (char*,char const*,size_t) ; 

__attribute__((used)) static bool
FUNC1(const char *value, size_t vallen,
					   unicode_linestyle *linestyle)
{
	if (FUNC0("single", value, vallen) == 0)
		*linestyle = UNICODE_LINESTYLE_SINGLE;
	else if (FUNC0("double", value, vallen) == 0)
		*linestyle = UNICODE_LINESTYLE_DOUBLE;
	else
		return false;
	return true;
}