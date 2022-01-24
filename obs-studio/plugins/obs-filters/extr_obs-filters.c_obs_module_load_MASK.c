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

/* Variables and functions */
 int /*<<< orphan*/  async_delay_filter ; 
 int /*<<< orphan*/  chroma_key_filter ; 
 int /*<<< orphan*/  color_filter ; 
 int /*<<< orphan*/  color_grade_filter ; 
 int /*<<< orphan*/  color_key_filter ; 
 int /*<<< orphan*/  compressor_filter ; 
 int /*<<< orphan*/  crop_filter ; 
 int /*<<< orphan*/  expander_filter ; 
 int /*<<< orphan*/  gain_filter ; 
 int /*<<< orphan*/  gpu_delay_filter ; 
 int /*<<< orphan*/  invert_polarity_filter ; 
 int /*<<< orphan*/  limiter_filter ; 
 int /*<<< orphan*/  luma_key_filter ; 
 int /*<<< orphan*/  mask_filter ; 
 int /*<<< orphan*/  noise_gate_filter ; 
 int /*<<< orphan*/  noise_suppress_filter ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scale_filter ; 
 int /*<<< orphan*/  scroll_filter ; 
 int /*<<< orphan*/  sharpness_filter ; 

bool FUNC1(void)
{
	FUNC0(&mask_filter);
	FUNC0(&crop_filter);
	FUNC0(&gain_filter);
	FUNC0(&color_filter);
	FUNC0(&scale_filter);
	FUNC0(&scroll_filter);
	FUNC0(&gpu_delay_filter);
	FUNC0(&color_key_filter);
	FUNC0(&color_grade_filter);
	FUNC0(&sharpness_filter);
	FUNC0(&chroma_key_filter);
	FUNC0(&async_delay_filter);
#if SPEEXDSP_ENABLED
	obs_register_source(&noise_suppress_filter);
#endif
	FUNC0(&invert_polarity_filter);
	FUNC0(&noise_gate_filter);
	FUNC0(&compressor_filter);
	FUNC0(&limiter_filter);
	FUNC0(&expander_filter);
	FUNC0(&luma_key_filter);
	return true;
}