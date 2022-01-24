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
typedef  int uint32_t ;
struct pst_dynamic {int psd_proc_cnt; } ;
typedef  int /*<<< orphan*/  pst ;
typedef  int /*<<< orphan*/  cpus ;

/* Variables and functions */
 int CTL_HW ; 
 int HW_NCPU ; 
 int /*<<< orphan*/  _SC_NPROCESSORS_ONLN ; 
 int /*<<< orphan*/  _SC_NPROC_ONLN ; 
 int FUNC0 (struct pst_dynamic*,int,int,int /*<<< orphan*/ ) ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int*,int,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

extern uint32_t
FUNC3(void)
{
	uint32_t ret = 0;

#if defined(TUKLIB_CPUCORES_SYSCTL)
	int name[2] = { CTL_HW, HW_NCPU };
	int cpus;
	size_t cpus_size = sizeof(cpus);
	if (sysctl(name, 2, &cpus, &cpus_size, NULL, 0) != -1
			&& cpus_size == sizeof(cpus) && cpus > 0)
		ret = cpus;

#elif defined(TUKLIB_CPUCORES_SYSCONF)
#	ifdef _SC_NPROCESSORS_ONLN
	// Most systems
	const long cpus = sysconf(_SC_NPROCESSORS_ONLN);
#	else
	// IRIX
	const long cpus = sysconf(_SC_NPROC_ONLN);
#	endif
	if (cpus > 0)
		ret = cpus;

#elif defined(TUKLIB_CPUCORES_PSTAT_GETDYNAMIC)
	struct pst_dynamic pst;
	if (pstat_getdynamic(&pst, sizeof(pst), 1, 0) != -1)
		ret = pst.psd_proc_cnt;
#endif

	return ret;
}