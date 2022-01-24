#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  data; } ;
struct TYPE_10__ {scalar_t__ type; int /*<<< orphan*/  (* enum_active_sources ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ;} ;
struct TYPE_11__ {TYPE_1__ context; TYPE_2__ info; } ;
typedef  TYPE_3__ obs_source_t ;
typedef  int /*<<< orphan*/  obs_source_enum_proc_t ;

/* Variables and functions */
 scalar_t__ OBS_SOURCE_TYPE_TRANSITION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

void FUNC5(obs_source_t *source,
				    obs_source_enum_proc_t enum_callback,
				    void *param)
{
	bool is_transition;
	if (!FUNC0(source, "obs_source_enum_active_sources"))
		return;

	is_transition = source->info.type == OBS_SOURCE_TYPE_TRANSITION;
	if (!is_transition && !source->info.enum_active_sources)
		return;

	FUNC1(source);

	if (is_transition)
		FUNC3(source, enum_callback, param);
	if (source->info.enum_active_sources)
		source->info.enum_active_sources(source->context.data,
						 enum_callback, param);

	FUNC2(source);
}