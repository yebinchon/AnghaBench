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
struct source_enum_data {void* member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_10__ {int /*<<< orphan*/  data; } ;
struct TYPE_9__ {scalar_t__ type; int /*<<< orphan*/  (* enum_active_sources ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct source_enum_data*) ;int /*<<< orphan*/  (* enum_all_sources ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct source_enum_data*) ;} ;
struct TYPE_11__ {TYPE_2__ context; TYPE_1__ info; } ;
typedef  TYPE_3__ obs_source_t ;
typedef  int /*<<< orphan*/  obs_source_enum_proc_t ;

/* Variables and functions */
 scalar_t__ OBS_SOURCE_TYPE_TRANSITION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  enum_source_full_tree_callback ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,struct source_enum_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct source_enum_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct source_enum_data*) ; 

__attribute__((used)) static void FUNC6(obs_source_t *source,
				      obs_source_enum_proc_t enum_callback,
				      void *param)
{
	struct source_enum_data data = {enum_callback, param};
	bool is_transition;

	if (!FUNC0(source, "obs_source_enum_active_tree"))
		return;

	is_transition = source->info.type == OBS_SOURCE_TYPE_TRANSITION;
	if (!is_transition && !source->info.enum_active_sources)
		return;

	FUNC1(source);

	if (source->info.type == OBS_SOURCE_TYPE_TRANSITION)
		FUNC3(
			source, enum_source_full_tree_callback, &data);

	if (source->info.enum_all_sources) {
		source->info.enum_all_sources(source->context.data,
					      enum_source_full_tree_callback,
					      &data);

	} else if (source->info.enum_active_sources) {
		source->info.enum_active_sources(source->context.data,
						 enum_source_full_tree_callback,
						 &data);
	}

	FUNC2(source);
}