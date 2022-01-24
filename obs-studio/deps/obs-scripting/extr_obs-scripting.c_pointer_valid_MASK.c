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
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 

__attribute__((used)) static inline bool FUNC1(const void *x, const char *name,
				 const char *func)
{
	if (!x) {
		FUNC0(LOG_WARNING, "obs-scripting: [%s] %s is null", func, name);
		return false;
	}

	return true;
}