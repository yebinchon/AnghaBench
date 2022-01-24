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
struct timespec {int /*<<< orphan*/  tv_nsec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 int EINVAL ; 
 int errno ; 
 int /*<<< orphan*/  nerrs ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int,struct timespec*) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*,struct timespec*) ; 
 int FUNC3 (int,struct timespec*) ; 

__attribute__((used)) static void FUNC4(int clock, const char *name)
{
	struct timespec start, vdso, end;
	int vdso_ret, end_ret;

	FUNC0("[RUN]\tTesting clock_gettime for clock %s (%d)...\n", name, clock);

	if (FUNC1(clock, &start) < 0) {
		if (errno == EINVAL) {
			vdso_ret = FUNC3(clock, &vdso);
			if (vdso_ret == -EINVAL) {
				FUNC0("[OK]\tNo such clock.\n");
			} else {
				FUNC0("[FAIL]\tNo such clock, but __vdso_clock_gettime returned %d\n", vdso_ret);
				nerrs++;
			}
		} else {
			FUNC0("[WARN]\t clock_gettime(%d) syscall returned error %d\n", clock, errno);
		}
		return;
	}

	vdso_ret = FUNC3(clock, &vdso);
	end_ret = FUNC1(clock, &end);

	if (vdso_ret != 0 || end_ret != 0) {
		FUNC0("[FAIL]\tvDSO returned %d, syscall errno=%d\n",
		       vdso_ret, errno);
		nerrs++;
		return;
	}

	FUNC0("\t%llu.%09ld %llu.%09ld %llu.%09ld\n",
	       (unsigned long long)start.tv_sec, start.tv_nsec,
	       (unsigned long long)vdso.tv_sec, vdso.tv_nsec,
	       (unsigned long long)end.tv_sec, end.tv_nsec);

	if (!FUNC2(&start, &vdso) || !FUNC2(&vdso, &end)) {
		FUNC0("[FAIL]\tTimes are out of sequence\n");
		nerrs++;
	}
}