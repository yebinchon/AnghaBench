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
struct color_key_filter_data {float contrast; float brightness; float gamma; int /*<<< orphan*/  color; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  SETTING_BRIGHTNESS ; 
 int /*<<< orphan*/  SETTING_CONTRAST ; 
 int /*<<< orphan*/  SETTING_GAMMA ; 
 int /*<<< orphan*/  SETTING_OPACITY ; 
 double FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline void FUNC3(struct color_key_filter_data *filter,
					 obs_data_t *settings)
{
	uint32_t opacity =
		(uint32_t)FUNC1(settings, SETTING_OPACITY);
	uint32_t color = 0xFFFFFF | (((opacity * 255) / 100) << 24);
	double contrast = FUNC0(settings, SETTING_CONTRAST);
	double brightness = FUNC0(settings, SETTING_BRIGHTNESS);
	double gamma = FUNC0(settings, SETTING_GAMMA);

	contrast = (contrast < 0.0) ? (1.0 / (-contrast + 1.0))
				    : (contrast + 1.0);

	brightness *= 0.5;

	gamma = (gamma < 0.0) ? (-gamma + 1.0) : (1.0 / (gamma + 1.0));

	filter->contrast = (float)contrast;
	filter->brightness = (float)brightness;
	filter->gamma = (float)gamma;

	FUNC2(&filter->color, color);
}