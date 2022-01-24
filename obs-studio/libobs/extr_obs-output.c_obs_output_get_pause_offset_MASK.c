#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  ts_offset; } ;
struct TYPE_6__ {TYPE_1__ pause; } ;
typedef  TYPE_2__ obs_output_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

uint64_t FUNC3(obs_output_t *output)
{
	uint64_t offset;

	if (!FUNC0(output, "obs_output_get_pause_offset"))
		return 0;

	FUNC1(&output->pause.mutex);
	offset = output->pause.ts_offset;
	FUNC2(&output->pause.mutex);

	return offset;
}