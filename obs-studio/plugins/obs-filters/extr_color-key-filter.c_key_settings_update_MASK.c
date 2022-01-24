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
typedef  int uint32_t ;
struct color_key_filter_data {float similarity; float smoothness; int /*<<< orphan*/  key_color; } ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  SETTING_COLOR_TYPE ; 
 int /*<<< orphan*/  SETTING_KEY_COLOR ; 
 int /*<<< orphan*/  SETTING_SIMILARITY ; 
 int /*<<< orphan*/  SETTING_SMOOTHNESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline void FUNC4(struct color_key_filter_data *filter,
				       obs_data_t *settings)
{
	int64_t similarity = FUNC0(settings, SETTING_SIMILARITY);
	int64_t smoothness = FUNC0(settings, SETTING_SMOOTHNESS);
	uint32_t key_color =
		(uint32_t)FUNC0(settings, SETTING_KEY_COLOR);
	const char *key_type =
		FUNC1(settings, SETTING_COLOR_TYPE);

	if (FUNC2(key_type, "green") == 0)
		key_color = 0x00FF00;
	else if (FUNC2(key_type, "blue") == 0)
		key_color = 0xFF0000;
	else if (FUNC2(key_type, "red") == 0)
		key_color = 0x0000FF;
	else if (FUNC2(key_type, "magenta") == 0)
		key_color = 0xFF00FF;

	FUNC3(&filter->key_color, key_color | 0xFF000000);

	filter->similarity = (float)similarity / 1000.0f;
	filter->smoothness = (float)smoothness / 1000.0f;
}