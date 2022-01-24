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
struct tms {int /*<<< orphan*/  tms_utime; int /*<<< orphan*/  tms_stime; } ;
struct os_cpu_usage_info {int /*<<< orphan*/  core_count; int /*<<< orphan*/  last_user_time; int /*<<< orphan*/  last_sys_time; int /*<<< orphan*/  last_cpu_time; } ;
typedef  struct os_cpu_usage_info os_cpu_usage_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  _SC_NPROCESSORS_ONLN ; 
 struct os_cpu_usage_info* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tms*) ; 

os_cpu_usage_info_t *FUNC3(void)
{
	struct os_cpu_usage_info *info = FUNC0(sizeof(*info));
	struct tms time_sample;

	info->last_cpu_time = FUNC2(&time_sample);
	info->last_sys_time = time_sample.tms_stime;
	info->last_user_time = time_sample.tms_utime;
	info->core_count = FUNC1(_SC_NPROCESSORS_ONLN);
	return info;
}