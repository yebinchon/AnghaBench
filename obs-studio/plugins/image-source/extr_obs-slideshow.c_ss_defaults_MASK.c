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
 int /*<<< orphan*/  S_BEHAVIOR ; 
 char* S_BEHAVIOR_ALWAYS_PLAY ; 
 int /*<<< orphan*/  S_CUSTOM_SIZE ; 
 int /*<<< orphan*/  S_LOOP ; 
 int /*<<< orphan*/  S_MODE ; 
 char* S_MODE_AUTO ; 
 int /*<<< orphan*/  S_SLIDE_TIME ; 
 int /*<<< orphan*/  S_TRANSITION ; 
 int /*<<< orphan*/  S_TR_SPEED ; 
 char* T_CUSTOM_SIZE_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(obs_data_t *settings)
{
	FUNC2(settings, S_TRANSITION, "fade");
	FUNC1(settings, S_SLIDE_TIME, 8000);
	FUNC1(settings, S_TR_SPEED, 700);
	FUNC2(settings, S_CUSTOM_SIZE,
				    T_CUSTOM_SIZE_AUTO);
	FUNC2(settings, S_BEHAVIOR,
				    S_BEHAVIOR_ALWAYS_PLAY);
	FUNC2(settings, S_MODE, S_MODE_AUTO);
	FUNC0(settings, S_LOOP, true);
}