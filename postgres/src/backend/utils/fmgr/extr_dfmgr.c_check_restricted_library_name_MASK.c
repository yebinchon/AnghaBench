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
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 

__attribute__((used)) static void
FUNC5(const char *name)
{
	if (FUNC4(name, "$libdir/plugins/", 16) != 0 ||
		FUNC3(name + 16) != NULL)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC2("access to library \"%s\" is not allowed",
						name)));
}