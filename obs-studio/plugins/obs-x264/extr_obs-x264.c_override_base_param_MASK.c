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
struct obs_x264 {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char**,char const**) ; 
 char* FUNC4 (struct obs_x264*,char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  x264_preset_names ; 
 int /*<<< orphan*/  x264_profile_names ; 
 int /*<<< orphan*/  x264_tune_names ; 

__attribute__((used)) static void FUNC5(struct obs_x264 *obsx264, const char *param,
				char **preset, char **profile, char **tune)
{
	char *name;
	const char *val;

	if (FUNC3(param, &name, &val)) {
		if (FUNC0(name, "preset") == 0) {
			const char *valid_name = FUNC4(
				obsx264, val, "preset", x264_preset_names);
			if (valid_name) {
				FUNC1(*preset);
				*preset = FUNC2(val);
			}

		} else if (FUNC0(name, "profile") == 0) {
			const char *valid_name = FUNC4(
				obsx264, val, "profile", x264_profile_names);
			if (valid_name) {
				FUNC1(*profile);
				*profile = FUNC2(val);
			}

		} else if (FUNC0(name, "tune") == 0) {
			const char *valid_name =
				FUNC4(obsx264, val, "tune", x264_tune_names);
			if (valid_name) {
				FUNC1(*tune);
				*tune = FUNC2(val);
			}
		}

		FUNC1(name);
	}
}