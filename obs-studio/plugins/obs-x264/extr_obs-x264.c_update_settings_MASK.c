#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int b_repeat_headers; } ;
struct obs_x264 {TYPE_1__ params; int /*<<< orphan*/  context; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct obs_x264*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct obs_x264*,char**,char**,char**,char**) ; 
 int FUNC7 (struct obs_x264*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char**) ; 
 char** FUNC9 (char const*,char,int) ; 
 int /*<<< orphan*/  FUNC10 (struct obs_x264*,int /*<<< orphan*/ *,char**,int) ; 

__attribute__((used)) static bool FUNC11(struct obs_x264 *obsx264, obs_data_t *settings,
			    bool update)
{
	char *preset = FUNC3(FUNC5(settings, "preset"));
	char *profile = FUNC3(FUNC5(settings, "profile"));
	char *tune = FUNC3(FUNC5(settings, "tune"));
	const char *opts = FUNC5(settings, "x264opts");

	char **paramlist;
	bool success = true;

	paramlist = FUNC9(opts, ' ', false);

	if (!update)
		FUNC2(LOG_INFO, "---------------------------------");

	if (!obsx264->context) {
		FUNC6(obsx264, paramlist, &preset, &profile,
				     &tune);

		if (preset && *preset)
			FUNC4("preset: %s", preset);
		if (profile && *profile)
			FUNC4("profile: %s", profile);
		if (tune && *tune)
			FUNC4("tune: %s", tune);

		success = FUNC7(obsx264, preset, tune);
	}

	if (success) {
		FUNC10(obsx264, settings, paramlist, update);
		if (opts && *opts && !update)
			FUNC4("custom settings: %s", opts);

		if (!obsx264->context)
			FUNC0(obsx264, profile);
	}

	obsx264->params.b_repeat_headers = false;

	FUNC8(paramlist);
	FUNC1(preset);
	FUNC1(profile);
	FUNC1(tune);

	return success;
}