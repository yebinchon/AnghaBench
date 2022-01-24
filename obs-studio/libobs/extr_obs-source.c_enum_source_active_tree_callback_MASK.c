#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct source_enum_data {int /*<<< orphan*/  param; int /*<<< orphan*/  (* enum_callback ) (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_13__ {scalar_t__ data; } ;
struct TYPE_14__ {scalar_t__ type; int /*<<< orphan*/  (* enum_active_sources ) (scalar_t__,void (*) (TYPE_3__*,TYPE_3__*,void*),struct source_enum_data*) ;} ;
struct TYPE_15__ {TYPE_1__ context; TYPE_2__ info; } ;
typedef  TYPE_3__ obs_source_t ;

/* Variables and functions */
 scalar_t__ OBS_SOURCE_TYPE_TRANSITION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,void (*) (TYPE_3__*,TYPE_3__*,void*),void*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void (*) (TYPE_3__*,TYPE_3__*,void*),struct source_enum_data*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(obs_source_t *parent,
					     obs_source_t *child, void *param)
{
	struct source_enum_data *data = param;
	bool is_transition = child->info.type == OBS_SOURCE_TYPE_TRANSITION;

	if (is_transition)
		FUNC0(
			child, enum_source_active_tree_callback, param);
	if (child->info.enum_active_sources) {
		if (child->context.data) {
			child->info.enum_active_sources(
				child->context.data,
				enum_source_active_tree_callback, data);
		}
	}

	data->enum_callback(parent, child, data->param);
}