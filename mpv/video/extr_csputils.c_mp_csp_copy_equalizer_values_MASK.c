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
struct mp_csp_params {double brightness; int contrast; double hue; int saturation; double levels_out; int /*<<< orphan*/  gamma; } ;
struct mp_csp_equalizer_opts {double* values; } ;

/* Variables and functions */
 size_t MP_CSP_EQ_BRIGHTNESS ; 
 size_t MP_CSP_EQ_CONTRAST ; 
 size_t MP_CSP_EQ_GAMMA ; 
 size_t MP_CSP_EQ_HUE ; 
 size_t MP_CSP_EQ_OUTPUT_LEVELS ; 
 size_t MP_CSP_EQ_SATURATION ; 
 double M_PI ; 
 int /*<<< orphan*/  FUNC0 (double) ; 
 double FUNC1 (double) ; 

void FUNC2(struct mp_csp_params *params,
                                  const struct mp_csp_equalizer_opts *eq)
{
    params->brightness = eq->values[MP_CSP_EQ_BRIGHTNESS] / 100.0;
    params->contrast = (eq->values[MP_CSP_EQ_CONTRAST] + 100) / 100.0;
    params->hue = eq->values[MP_CSP_EQ_HUE] / 100.0 * M_PI;
    params->saturation = (eq->values[MP_CSP_EQ_SATURATION] + 100) / 100.0;
    params->gamma = FUNC0(FUNC1(8.0) * eq->values[MP_CSP_EQ_GAMMA] / 100.0);
    params->levels_out = eq->values[MP_CSP_EQ_OUTPUT_LEVELS];
}