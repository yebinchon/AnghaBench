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
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 scalar_t__ HOOK_RATE_NORMAL ; 
 int /*<<< orphan*/  SETTING_ANTI_CHEAT_HOOK ; 
 int /*<<< orphan*/  SETTING_CAPTURE_OVERLAYS ; 
 int /*<<< orphan*/  SETTING_COMPATIBILITY ; 
 int /*<<< orphan*/  SETTING_CURSOR ; 
 int /*<<< orphan*/  SETTING_FORCE_SCALING ; 
 int /*<<< orphan*/  SETTING_HOOK_RATE ; 
 int /*<<< orphan*/  SETTING_LIMIT_FRAMERATE ; 
 int /*<<< orphan*/  SETTING_MODE ; 
 char* SETTING_MODE_ANY ; 
 int /*<<< orphan*/  SETTING_SCALE_RES ; 
 int /*<<< orphan*/  SETTING_TRANSPARENCY ; 
 int /*<<< orphan*/  SETTING_WINDOW_PRIORITY ; 
 scalar_t__ WINDOW_PRIORITY_EXE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(obs_data_t *settings)
{
	FUNC2(settings, SETTING_MODE, SETTING_MODE_ANY);
	FUNC1(settings, SETTING_WINDOW_PRIORITY,
				 (int)WINDOW_PRIORITY_EXE);
	FUNC0(settings, SETTING_COMPATIBILITY, false);
	FUNC0(settings, SETTING_FORCE_SCALING, false);
	FUNC0(settings, SETTING_CURSOR, true);
	FUNC0(settings, SETTING_TRANSPARENCY, false);
	FUNC2(settings, SETTING_SCALE_RES, "0x0");
	FUNC0(settings, SETTING_LIMIT_FRAMERATE, false);
	FUNC0(settings, SETTING_CAPTURE_OVERLAYS, false);
	FUNC0(settings, SETTING_ANTI_CHEAT_HOOK, true);
	FUNC1(settings, SETTING_HOOK_RATE,
				 (int)HOOK_RATE_NORMAL);
}