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
typedef  int /*<<< orphan*/  obs_property_t ;
typedef  int /*<<< orphan*/  obs_properties_t ;
typedef  int /*<<< orphan*/  obs_data_t ;
struct TYPE_2__ {int /*<<< orphan*/  source; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_COMBO_FORMAT_INT ; 
 int /*<<< orphan*/  OBS_COMBO_TYPE_LIST ; 
 int /*<<< orphan*/  OBS_TEXT_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 TYPE_1__* data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xshm_server_changed ; 
 int /*<<< orphan*/  xshm_toggle_advanced ; 

__attribute__((used)) static obs_properties_t *FUNC10(void *vptr)
{
	FUNC0(vptr);

	obs_properties_t *props = FUNC6();

	FUNC4(props, "screen", FUNC2("Screen"),
				OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_INT);
	FUNC3(props, "show_cursor",
				FUNC2("CaptureCursor"));
	obs_property_t *advanced = FUNC3(
		props, "advanced", FUNC2("AdvancedSettings"));
	obs_property_t *server = FUNC5(
		props, "server", FUNC2("XServer"), OBS_TEXT_DEFAULT);

	FUNC8(advanced, xshm_toggle_advanced);
	FUNC8(server, xshm_server_changed);

	/* trigger server callback to get screen count ... */
	obs_data_t *settings = FUNC9(data->source);
	FUNC7(server, settings);
	FUNC1(settings);

	return props;
}