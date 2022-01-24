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
 int /*<<< orphan*/  SETTING_COLOR ; 
 int /*<<< orphan*/  SETTING_OPACITY ; 
 int /*<<< orphan*/  SETTING_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(obs_data_t *settings)
{
	FUNC1(settings, SETTING_TYPE,
				    "mask_color_filter.effect");
	FUNC0(settings, SETTING_COLOR, 0xFFFFFF);
	FUNC0(settings, SETTING_OPACITY, 100);
}