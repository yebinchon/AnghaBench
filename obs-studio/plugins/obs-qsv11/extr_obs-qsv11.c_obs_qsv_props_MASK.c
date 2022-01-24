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
typedef  int /*<<< orphan*/  obs_property_t ;
typedef  int /*<<< orphan*/  obs_properties_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_COMBO_FORMAT_STRING ; 
 int /*<<< orphan*/  OBS_COMBO_TYPE_LIST ; 
 char* TEXT_ACCURACY ; 
 char* TEXT_ASYNC_DEPTH ; 
 char* TEXT_BFRAMES ; 
 char* TEXT_CONVERGENCE ; 
 char* TEXT_ICQ_QUALITY ; 
 char* TEXT_KEYINT_SEC ; 
 char* TEXT_LA_DEPTH ; 
 char* TEXT_MAX_BITRATE ; 
 int /*<<< orphan*/  TEXT_MBBRC ; 
 int /*<<< orphan*/  TEXT_PROFILE ; 
 int /*<<< orphan*/  TEXT_RATE_CONTROL ; 
 int /*<<< orphan*/  TEXT_SPEED ; 
 char* TEXT_TARGET_BITRATE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,char*,int,int,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qsv_profile_names ; 
 int /*<<< orphan*/  qsv_ratecontrols ; 
 int /*<<< orphan*/  qsv_usage_names ; 
 int /*<<< orphan*/  rate_control_modified ; 

__attribute__((used)) static obs_properties_t *FUNC10(void *unused)
{
	FUNC0(unused);

	obs_properties_t *props = FUNC7();
	obs_property_t *list;

	list = FUNC6(props, "target_usage", TEXT_SPEED,
				       OBS_COMBO_TYPE_LIST,
				       OBS_COMBO_FORMAT_STRING);
	FUNC2(list, qsv_usage_names);

	list = FUNC6(props, "profile", TEXT_PROFILE,
				       OBS_COMBO_TYPE_LIST,
				       OBS_COMBO_FORMAT_STRING);
	FUNC2(list, qsv_profile_names);

	FUNC5(props, "keyint_sec", TEXT_KEYINT_SEC, 1, 20, 1);
	FUNC5(props, "async_depth", TEXT_ASYNC_DEPTH, 1, 7, 1);

	list = FUNC6(props, "rate_control", TEXT_RATE_CONTROL,
				       OBS_COMBO_TYPE_LIST,
				       OBS_COMBO_FORMAT_STRING);
	FUNC1(list, qsv_ratecontrols);
	FUNC9(list, rate_control_modified);

	obs_property_t *p;
	p = FUNC5(props, "bitrate", TEXT_TARGET_BITRATE, 50,
				   10000000, 50);
	FUNC8(p, " Kbps");

	p = FUNC5(props, "max_bitrate", TEXT_MAX_BITRATE, 50,
				   10000000, 50);
	FUNC8(p, " Kbps");

	FUNC5(props, "accuracy", TEXT_ACCURACY, 0, 10000, 1);
	FUNC5(props, "convergence", TEXT_CONVERGENCE, 0, 10,
			       1);
	FUNC5(props, "qpi", "QPI", 1, 51, 1);
	FUNC5(props, "qpp", "QPP", 1, 51, 1);
	FUNC5(props, "qpb", "QPB", 1, 51, 1);
	FUNC5(props, "icq_quality", TEXT_ICQ_QUALITY, 1, 51,
			       1);
	FUNC5(props, "la_depth", TEXT_LA_DEPTH, 10, 100, 1);
	FUNC5(props, "bframes", TEXT_BFRAMES, 0, 3, 1);

	if (FUNC3())
		FUNC4(props, "mbbrc", TEXT_MBBRC);

	return props;
}