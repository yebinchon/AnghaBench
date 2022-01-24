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
typedef  unsigned long long uint64_t ;
struct obs_video_info {scalar_t__ fps_num; scalar_t__ fps_den; int /*<<< orphan*/  member_0; } ;
struct gpu_delay_filter_data {unsigned long long interval_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obs_video_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct gpu_delay_filter_data*,unsigned long long) ; 

__attribute__((used)) static inline void FUNC2(struct gpu_delay_filter_data *f)
{
	struct obs_video_info ovi = {0};
	uint64_t interval_ns;

	FUNC0(&ovi);

	interval_ns =
		(uint64_t)ovi.fps_den * 1000000000ULL / (uint64_t)ovi.fps_num;

	if (interval_ns != f->interval_ns)
		FUNC1(f, interval_ns);
}