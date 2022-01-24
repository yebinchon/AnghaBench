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
 int /*<<< orphan*/  S_ATTACK_TIME ; 
 int /*<<< orphan*/  S_DETECTOR ; 
 int /*<<< orphan*/  S_OUTPUT_GAIN ; 
 int /*<<< orphan*/  S_PRESETS ; 
 int /*<<< orphan*/  S_RATIO ; 
 int /*<<< orphan*/  S_RELEASE_TIME ; 
 int /*<<< orphan*/  S_THRESHOLD ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static void FUNC5(obs_data_t *s)
{
	const char *presets = FUNC0(s, S_PRESETS);
	bool is_expander_preset = true;
	if (FUNC4(presets, "gate") == 0)
		is_expander_preset = false;
	FUNC3(s, S_PRESETS,
				    is_expander_preset ? "expander" : "gate");
	FUNC1(s, S_RATIO,
				    is_expander_preset ? 2.0 : 10.0);
	FUNC1(s, S_THRESHOLD, -40.0f);
	FUNC2(s, S_ATTACK_TIME, 10);
	FUNC2(s, S_RELEASE_TIME,
				 is_expander_preset ? 50 : 125);
	FUNC1(s, S_OUTPUT_GAIN, 0.0);
	FUNC3(s, S_DETECTOR, "RMS");
}