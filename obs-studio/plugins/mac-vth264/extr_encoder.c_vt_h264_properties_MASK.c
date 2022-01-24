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
 int /*<<< orphan*/  TEXT_BFRAMES ; 
 int /*<<< orphan*/  TEXT_BITRATE ; 
 int /*<<< orphan*/  TEXT_KEYINT_SEC ; 
 int /*<<< orphan*/  TEXT_MAX_BITRATE ; 
 int /*<<< orphan*/  TEXT_MAX_BITRATE_WINDOW ; 
 char* TEXT_NONE ; 
 int /*<<< orphan*/  TEXT_PROFILE ; 
 int /*<<< orphan*/  TEXT_USE_MAX_BITRATE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  limit_bitrate_modified ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,float,float,float) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static obs_properties_t *FUNC9(void *unused)
{
	FUNC0(unused);

	obs_properties_t *props = FUNC5();
	obs_property_t *p;

	p = FUNC3(props, "bitrate", TEXT_BITRATE, 50, 10000000,
				   50);
	FUNC6(p, " Kbps");

	p = FUNC1(props, "limit_bitrate",
				    TEXT_USE_MAX_BITRATE);
	FUNC8(p, limit_bitrate_modified);

	p = FUNC3(props, "max_bitrate", TEXT_MAX_BITRATE, 50,
				   10000000, 50);
	FUNC6(p, " Kbps");

	FUNC2(props, "max_bitrate_window",
				 TEXT_MAX_BITRATE_WINDOW, 0.10f, 10.0f, 0.25f);

	FUNC3(props, "keyint_sec", TEXT_KEYINT_SEC, 0, 20, 1);

	p = FUNC4(props, "profile", TEXT_PROFILE,
				    OBS_COMBO_TYPE_LIST,
				    OBS_COMBO_FORMAT_STRING);
	FUNC7(p, TEXT_NONE, "");
	FUNC7(p, "baseline", "baseline");
	FUNC7(p, "main", "main");
	FUNC7(p, "high", "high");

	FUNC1(props, "bframes", TEXT_BFRAMES);

	return props;
}