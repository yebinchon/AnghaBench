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
typedef  int /*<<< orphan*/  json_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_COMBO_FORMAT_STRING ; 
 int /*<<< orphan*/  OBS_COMBO_TYPE_LIST ; 
 int /*<<< orphan*/  OBS_TEXT_PASSWORD ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  properties_data_destroy ; 
 int /*<<< orphan*/  service_selected ; 
 int /*<<< orphan*/  show_all_services_toggled ; 

__attribute__((used)) static obs_properties_t *FUNC9(void *unused)
{
	FUNC0(unused);

	obs_properties_t *ppts = FUNC5();
	obs_property_t *p;
	json_t *root;

	root = FUNC8();
	if (root)
		FUNC6(ppts, root, properties_data_destroy);

	p = FUNC3(ppts, "service", FUNC1("Service"),
				    OBS_COMBO_TYPE_LIST,
				    OBS_COMBO_FORMAT_STRING);

	FUNC7(p, service_selected);

	p = FUNC2(ppts, "show_all",
				    FUNC1("ShowAll"));

	FUNC7(p, show_all_services_toggled);

	FUNC3(ppts, "server", FUNC1("Server"),
				OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_STRING);

	FUNC4(ppts, "key", FUNC1("StreamKey"),
				OBS_TEXT_PASSWORD);
	return ppts;
}