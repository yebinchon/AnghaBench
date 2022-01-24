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
struct obs_x264 {int /*<<< orphan*/  params; int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static inline void FUNC2(struct obs_x264 *obsx264,
				      const char *profile)
{
	if (!obsx264->context && profile && *profile) {
		int ret = FUNC1(&obsx264->params, profile);
		if (ret != 0)
			FUNC0("Failed to set x264 profile '%s'", profile);
	}
}