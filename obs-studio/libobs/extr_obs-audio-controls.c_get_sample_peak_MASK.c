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
 int /*<<< orphan*/  FUNC0 (float const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (float,int /*<<< orphan*/ ) ; 

__attribute__((used)) static float FUNC4(__m128 previous_samples, const float *samples,
			     size_t nr_samples)
{
	__m128 peak = previous_samples;
	for (size_t i = 0; (i + 3) < nr_samples; i += 4) {
		__m128 new_work = FUNC0(&samples[i]);
		peak = FUNC1(peak, FUNC2(new_work));
	}

	float r;
	FUNC3(r, peak);
	return r;
}