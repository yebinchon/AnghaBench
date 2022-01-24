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
 int /*<<< orphan*/  SETTING_BRIGHTNESS ; 
 int /*<<< orphan*/  SETTING_COLOR ; 
 int /*<<< orphan*/  SETTING_CONTRAST ; 
 int /*<<< orphan*/  SETTING_GAMMA ; 
 int /*<<< orphan*/  SETTING_HUESHIFT ; 
 int /*<<< orphan*/  SETTING_OPACITY ; 
 int /*<<< orphan*/  SETTING_SATURATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(obs_data_t *settings)
{
	FUNC0(settings, SETTING_GAMMA, 0.0);
	FUNC0(settings, SETTING_CONTRAST, 0.0);
	FUNC0(settings, SETTING_BRIGHTNESS, 0.0);
	FUNC0(settings, SETTING_SATURATION, 0.0);
	FUNC0(settings, SETTING_HUESHIFT, 0.0);
	FUNC0(settings, SETTING_OPACITY, 100.0);
	FUNC1(settings, SETTING_COLOR, 0xFFFFFF);
}