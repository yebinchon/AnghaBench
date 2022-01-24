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
struct timezone {int tz_minuteswest; scalar_t__ tz_dsttime; } ;
struct timeval {int /*<<< orphan*/  tv_usec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 int errno ; 
 int /*<<< orphan*/  nerrs ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct timeval*,struct timezone*) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,struct timeval*) ; 
 int FUNC3 (struct timeval*,struct timezone*) ; 

__attribute__((used)) static void FUNC4(void)
{
	struct timeval start, vdso, end;
	struct timezone sys_tz, vdso_tz;
	int vdso_ret, end_ret;

	if (!&vdso_gettimeofday)
		return;

	FUNC0("[RUN]\tTesting gettimeofday...\n");

	if (FUNC1(&start, &sys_tz) < 0) {
		FUNC0("[FAIL]\tsys_gettimeofday failed (%d)\n", errno);
		nerrs++;
		return;
	}

	vdso_ret = FUNC3(&vdso, &vdso_tz);
	end_ret = FUNC1(&end, NULL);

	if (vdso_ret != 0 || end_ret != 0) {
		FUNC0("[FAIL]\tvDSO returned %d, syscall errno=%d\n",
		       vdso_ret, errno);
		nerrs++;
		return;
	}

	FUNC0("\t%llu.%06ld %llu.%06ld %llu.%06ld\n",
	       (unsigned long long)start.tv_sec, start.tv_usec,
	       (unsigned long long)vdso.tv_sec, vdso.tv_usec,
	       (unsigned long long)end.tv_sec, end.tv_usec);

	if (!FUNC2(&start, &vdso) || !FUNC2(&vdso, &end)) {
		FUNC0("[FAIL]\tTimes are out of sequence\n");
		nerrs++;
	}

	if (sys_tz.tz_minuteswest == vdso_tz.tz_minuteswest &&
	    sys_tz.tz_dsttime == vdso_tz.tz_dsttime) {
		FUNC0("[OK]\ttimezones match: minuteswest=%d, dsttime=%d\n",
		       sys_tz.tz_minuteswest, sys_tz.tz_dsttime);
	} else {
		FUNC0("[FAIL]\ttimezones do not match\n");
		nerrs++;
	}

	/* And make sure that passing NULL for tz doesn't crash. */
	FUNC3(&vdso, NULL);
}