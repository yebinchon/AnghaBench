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
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int,char const*) ; 

__attribute__((used)) static void
FUNC2(const char *categoryname, int category, const char *locale)
{
	if (FUNC1(category, locale) == NULL &&
		FUNC1(category, "C") == NULL)
		FUNC0(FATAL, "could not adopt \"%s\" locale nor C locale for %s",
			 locale, categoryname);
}