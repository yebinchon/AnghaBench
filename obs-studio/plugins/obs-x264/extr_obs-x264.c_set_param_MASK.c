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
struct obs_x264 {int /*<<< orphan*/  params; } ;

/* Variables and functions */
 char* OPENCL_ALIAS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,char**,char const**) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static inline void FUNC6(struct obs_x264 *obsx264, const char *param)
{
	char *name;
	const char *val;

	if (FUNC1(param, &name, &val)) {
		if (FUNC2(name, "preset") != 0 &&
		    FUNC2(name, "profile") != 0 && FUNC2(name, "tune") != 0 &&
		    FUNC2(name, "fps") != 0 &&
		    FUNC2(name, "force-cfr") != 0 &&
		    FUNC2(name, "width") != 0 && FUNC2(name, "height") != 0 &&
		    FUNC2(name, "opencl") != 0) {
			if (FUNC2(name, OPENCL_ALIAS) == 0)
				FUNC3(name, "opencl");
			if (FUNC5(&obsx264->params, name, val) != 0)
				FUNC4("x264 param: %s failed", param);
		}

		FUNC0(name);
	}
}