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
typedef  size_t uint32_t ;
struct compressor_data {float const slope; float const threshold; size_t num_channels; float output_gain; int /*<<< orphan*/ * envelope_buf; } ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,float) ; 
 float FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(const struct compressor_data *cd,
				       float **samples, uint32_t num_samples)
{
	for (size_t i = 0; i < num_samples; ++i) {
		const float env_db = FUNC2(cd->envelope_buf[i]);
		float gain = cd->slope * (cd->threshold - env_db);
		gain = FUNC0(FUNC1(0, gain));

		for (size_t c = 0; c < cd->num_channels; ++c) {
			if (samples[c]) {
				samples[c][i] *= gain * cd->output_gain;
			}
		}
	}
}