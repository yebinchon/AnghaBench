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
struct sample {int dummy; } ;

/* Variables and functions */
 scalar_t__ MAX_FREQ_ERROR ; 
 double MAX_STDDEV ; 
 int MEAN_SAMPLE_INTERVAL ; 
 int SAMPLES ; 
 int STEP_INTERVAL ; 
 scalar_t__ FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 (struct sample*) ; 
 int mono_freq_offset ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sample*,int,double*,double*,double*,double*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (double) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(int calibration, double freq_base, double freq_step)
{
	struct sample samples[SAMPLES];
	double intercept, slope, stddev1, max1, stddev2, max2;
	double freq_error1, freq_error2;
	int i;

	FUNC6(freq_base);

	for (i = 0; i < 10; i++)
		FUNC7(1e6 * MEAN_SAMPLE_INTERVAL / 10);

	FUNC5();

	FUNC6(freq_base + freq_step);

	for (i = 0; i < 10; i++)
		FUNC7(FUNC3() % 2000000 * STEP_INTERVAL / 10);

	FUNC6(freq_base);

	for (i = 0; i < SAMPLES; i++) {
		FUNC7(FUNC3() % 2000000 * MEAN_SAMPLE_INTERVAL);
		FUNC1(&samples[i]);
	}

	if (calibration) {
		FUNC4(samples, SAMPLES, &intercept, &slope, &stddev1, &max1);
		mono_freq_offset = slope;
		FUNC2("CLOCK_MONOTONIC_RAW frequency offset: %11.3f ppm\n",
		       1e6 * mono_freq_offset);
		return 0;
	}

	FUNC4(samples, SAMPLES / 2, &intercept, &slope, &stddev1, &max1);
	freq_error1 = slope * (1.0 - mono_freq_offset) - mono_freq_offset -
			freq_base;

	FUNC4(samples + SAMPLES / 2, SAMPLES / 2, &intercept, &slope,
		&stddev2, &max2);
	freq_error2 = slope * (1.0 - mono_freq_offset) - mono_freq_offset -
			freq_base;

	FUNC2("%6.0f %+10.3f %6.0f %7.0f %+10.3f %6.0f %7.0f\t",
	       1e6 * freq_step,
	       1e6 * freq_error1, 1e9 * stddev1, 1e9 * max1,
	       1e6 * freq_error2, 1e9 * stddev2, 1e9 * max2);

	if (FUNC0(freq_error2) > MAX_FREQ_ERROR || stddev2 > MAX_STDDEV) {
		FUNC2("[FAIL]\n");
		return 1;
	}

	FUNC2("[OK]\n");
	return 0;
}