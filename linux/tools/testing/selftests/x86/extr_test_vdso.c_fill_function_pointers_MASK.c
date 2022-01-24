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
typedef  scalar_t__ vgtod_t ;
typedef  scalar_t__ vgettime_t ;
typedef  void* getcpu_t ;

/* Variables and functions */
 int RTLD_LAZY ; 
 int RTLD_LOCAL ; 
 int RTLD_NOLOAD ; 
 void* FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (void*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ vdso_clock_gettime ; 
 void* vdso_getcpu ; 
 scalar_t__ vdso_gettimeofday ; 
 void* vgetcpu ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static void FUNC4()
{
	void *vdso = FUNC0("linux-vdso.so.1",
			    RTLD_LAZY | RTLD_LOCAL | RTLD_NOLOAD);
	if (!vdso)
		vdso = FUNC0("linux-gate.so.1",
			      RTLD_LAZY | RTLD_LOCAL | RTLD_NOLOAD);
	if (!vdso) {
		FUNC2("[WARN]\tfailed to find vDSO\n");
		return;
	}

	vdso_getcpu = (getcpu_t)FUNC1(vdso, "__vdso_getcpu");
	if (!vdso_getcpu)
		FUNC2("Warning: failed to find getcpu in vDSO\n");

	vgetcpu = (getcpu_t) FUNC3();

	vdso_clock_gettime = (vgettime_t)FUNC1(vdso, "__vdso_clock_gettime");
	if (!vdso_clock_gettime)
		FUNC2("Warning: failed to find clock_gettime in vDSO\n");

	vdso_gettimeofday = (vgtod_t)FUNC1(vdso, "__vdso_gettimeofday");
	if (!vdso_gettimeofday)
		FUNC2("Warning: failed to find gettimeofday in vDSO\n");

}