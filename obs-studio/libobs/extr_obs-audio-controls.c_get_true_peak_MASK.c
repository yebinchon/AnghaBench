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
typedef  int /*<<< orphan*/  __m128 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (float const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (float,int /*<<< orphan*/ ) ; 

__attribute__((used)) static float FUNC7(__m128 previous_samples, const float *samples,
			   size_t nr_samples)
{
	/* These are normalized-sinc parameters for interpolating over sample
	 * points which are located at x-coords: -1.5, -0.5, +0.5, +1.5.
	 * And oversample points at x-coords: -0.3, -0.1, 0.1, 0.3. */
	const __m128 m3 =
		FUNC4(-0.155915f, 0.935489f, 0.233872f, -0.103943f);
	const __m128 m1 =
		FUNC4(-0.216236f, 0.756827f, 0.504551f, -0.189207f);
	const __m128 p1 =
		FUNC4(-0.189207f, 0.504551f, 0.756827f, -0.216236f);
	const __m128 p3 =
		FUNC4(-0.103943f, 0.233872f, 0.935489f, -0.155915f);

	__m128 work = previous_samples;
	__m128 peak = previous_samples;
	for (size_t i = 0; (i + 3) < nr_samples; i += 4) {
		__m128 new_work = FUNC2(&samples[i]);
		__m128 intrp_samples;

		/* Include the actual sample values in the peak. */
		__m128 abs_new_work = FUNC5(new_work);
		peak = FUNC3(peak, abs_new_work);

		/* Shift in the next point. */
		FUNC0(new_work, work);
		FUNC1(intrp_samples, work, m3, m1, p1, p3);
		peak = FUNC3(peak, FUNC5(intrp_samples));

		FUNC0(new_work, work);
		FUNC1(intrp_samples, work, m3, m1, p1, p3);
		peak = FUNC3(peak, FUNC5(intrp_samples));

		FUNC0(new_work, work);
		FUNC1(intrp_samples, work, m3, m1, p1, p3);
		peak = FUNC3(peak, FUNC5(intrp_samples));

		FUNC0(new_work, work);
		FUNC1(intrp_samples, work, m3, m1, p1, p3);
		peak = FUNC3(peak, FUNC5(intrp_samples));
	}

	float r;
	FUNC6(r, peak);
	return r;
}