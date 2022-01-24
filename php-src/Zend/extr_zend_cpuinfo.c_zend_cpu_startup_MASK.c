#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int initialized; int eax; scalar_t__ ebx; } ;
typedef  TYPE_1__ zend_cpu_info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__ cpuinfo ; 

void FUNC1(void)
{
	if (!cpuinfo.initialized) {
		zend_cpu_info ebx;
		int max_feature;

		cpuinfo.initialized = 1;
		FUNC0(0, 0, &cpuinfo);
		max_feature = cpuinfo.eax;
		if (max_feature == 0) {
			return;
		}

		FUNC0(1, 0, &cpuinfo);

		/* for avx2 */
		if (max_feature >= 7) {
			FUNC0(7, 0, &ebx);
			cpuinfo.ebx = ebx.ebx;
		} else {
			cpuinfo.ebx = 0;
		}
	}
}