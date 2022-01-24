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
typedef  scalar_t__ uint32_t ;
struct gpu_delay_filter_data {int target_valid; scalar_t__ cx; scalar_t__ cy; int /*<<< orphan*/  context; } ;
typedef  int /*<<< orphan*/  obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct gpu_delay_filter_data*) ; 

__attribute__((used)) static inline bool FUNC4(struct gpu_delay_filter_data *f)
{
	obs_source_t *target = FUNC0(f->context);
	uint32_t cx;
	uint32_t cy;

	f->target_valid = !!target;
	if (!f->target_valid)
		return true;

	cx = FUNC2(target);
	cy = FUNC1(target);

	f->target_valid = !!cx && !!cy;
	if (!f->target_valid)
		return true;

	if (cx != f->cx || cy != f->cy) {
		f->cx = cx;
		f->cy = cy;
		FUNC3(f);
		return true;
	}

	return false;
}