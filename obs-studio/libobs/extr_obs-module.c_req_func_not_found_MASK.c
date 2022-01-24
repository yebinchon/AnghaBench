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
 int /*<<< orphan*/  LOG_DEBUG ; 
 int MODULE_MISSING_EXPORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 

__attribute__((used)) static inline int FUNC1(const char *name, const char *path)
{
	FUNC0(LOG_DEBUG,
	     "Required module function '%s' in module '%s' not "
	     "found, loading of module failed",
	     name, path);
	return MODULE_MISSING_EXPORTS;
}