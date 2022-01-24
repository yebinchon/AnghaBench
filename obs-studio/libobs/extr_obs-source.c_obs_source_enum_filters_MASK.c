#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct obs_source {int dummy; } ;
struct TYPE_8__ {size_t num; struct obs_source** array; } ;
struct TYPE_9__ {int /*<<< orphan*/  filter_mutex; TYPE_1__ filters; } ;
typedef  TYPE_2__ obs_source_t ;
typedef  int /*<<< orphan*/  (* obs_source_enum_proc_t ) (TYPE_2__*,struct obs_source*,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) (TYPE_2__*,struct obs_source*,void*),char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(obs_source_t *source,
			     obs_source_enum_proc_t callback, void *param)
{
	if (!FUNC1(source, "obs_source_enum_filters"))
		return;
	if (!FUNC0(callback, "obs_source_enum_filters"))
		return;

	FUNC2(&source->filter_mutex);

	for (size_t i = source->filters.num; i > 0; i--) {
		struct obs_source *filter = source->filters.array[i - 1];
		callback(source, filter, param);
	}

	FUNC3(&source->filter_mutex);
}