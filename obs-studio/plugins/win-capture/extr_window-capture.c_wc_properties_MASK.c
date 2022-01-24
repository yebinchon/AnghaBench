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
 int /*<<< orphan*/  EXCLUDE_MINIMIZED ; 
 int /*<<< orphan*/  OBS_COMBO_FORMAT_INT ; 
 int /*<<< orphan*/  OBS_COMBO_FORMAT_STRING ; 
 int /*<<< orphan*/  OBS_COMBO_TYPE_LIST ; 
 int /*<<< orphan*/  TEXT_CAPTURE_CURSOR ; 
 int /*<<< orphan*/  TEXT_COMPATIBILITY ; 
 int /*<<< orphan*/  TEXT_MATCH_CLASS ; 
 int /*<<< orphan*/  TEXT_MATCH_EXE ; 
 int /*<<< orphan*/  TEXT_MATCH_PRIORITY ; 
 int /*<<< orphan*/  TEXT_MATCH_TITLE ; 
 int /*<<< orphan*/  TEXT_WINDOW ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  WINDOW_PRIORITY_CLASS ; 
 int /*<<< orphan*/  WINDOW_PRIORITY_EXE ; 
 int /*<<< orphan*/  WINDOW_PRIORITY_TITLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static obs_properties_t *FUNC6(void *unused)
{
	FUNC0(unused);

	obs_properties_t *ppts = FUNC4();
	obs_property_t *p;

	p = FUNC3(ppts, "window", TEXT_WINDOW,
				    OBS_COMBO_TYPE_LIST,
				    OBS_COMBO_FORMAT_STRING);
	FUNC1(p, EXCLUDE_MINIMIZED, NULL);

	p = FUNC3(ppts, "priority", TEXT_MATCH_PRIORITY,
				    OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_INT);
	FUNC5(p, TEXT_MATCH_TITLE, WINDOW_PRIORITY_TITLE);
	FUNC5(p, TEXT_MATCH_CLASS, WINDOW_PRIORITY_CLASS);
	FUNC5(p, TEXT_MATCH_EXE, WINDOW_PRIORITY_EXE);

	FUNC2(ppts, "cursor", TEXT_CAPTURE_CURSOR);

	FUNC2(ppts, "compatibility", TEXT_COMPATIBILITY);

	return ppts;
}