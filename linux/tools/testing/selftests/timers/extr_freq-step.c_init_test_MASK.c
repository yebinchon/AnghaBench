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
struct timespec {int tv_sec; int tv_nsec; } ;
struct sample {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC_RAW ; 
 int MAX_PRECISION ; 
 int /*<<< orphan*/  _SC_CLK_TCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 double FUNC1 (struct sample*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int mono_base ; 
 int mono_raw_base ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int precision ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int,double,double) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  user_hz ; 

__attribute__((used)) static void FUNC9(void)
{
	struct timespec ts;
	struct sample sample;

	if (FUNC0(CLOCK_MONOTONIC_RAW, &ts)) {
		FUNC4("[FAIL] clock_gettime(CLOCK_MONOTONIC_RAW)");
		FUNC2();
	}

	mono_raw_base = ts.tv_sec;

	if (FUNC0(CLOCK_MONOTONIC, &ts)) {
		FUNC4("[FAIL] clock_gettime(CLOCK_MONOTONIC)");
		FUNC2();
	}

	mono_base = ts.tv_sec;

	user_hz = FUNC8(_SC_CLK_TCK);

	precision = FUNC1(&sample) / 2.0;
	FUNC5("CLOCK_MONOTONIC_RAW+CLOCK_MONOTONIC precision: %.0f ns\t\t",
	       1e9 * precision);

	if (precision > MAX_PRECISION)
		FUNC3("precision: %.0f ns > MAX_PRECISION: %.0f ns\n",
				1e9 * precision, 1e9 * MAX_PRECISION);

	FUNC5("[OK]\n");
	FUNC7(ts.tv_sec ^ ts.tv_nsec);

	FUNC6(1, 0.0, 0.0);
}