#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
struct TYPE_12__ {char const* name; } ;
struct TYPE_13__ {int* transition_source_active; int transition_mode; int transition_scale_type; void* transition_cy; void* transition_cx; void* transition_alignment; struct TYPE_13__** transition_sources; TYPE_1__ context; } ;
typedef  TYPE_2__ obs_source_t ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  scalar_t__ int64_t ;
typedef  enum obs_transition_scale_type { ____Placeholder_obs_transition_scale_type } obs_transition_scale_type ;
typedef  enum obs_transition_mode { ____Placeholder_obs_transition_mode } obs_transition_mode ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

void FUNC10(obs_source_t *tr, obs_data_t *data)
{
	const char *name = FUNC3(data, "transition_source_a");
	int64_t alignment = FUNC2(data, "transition_alignment");
	int64_t mode = FUNC2(data, "transition_mode");
	int64_t scale_type = FUNC2(data, "transition_scale_type");
	int64_t cx = FUNC2(data, "transition_cx");
	int64_t cy = FUNC2(data, "transition_cy");
	obs_source_t *source = NULL;

	if (name) {
		source = FUNC4(name);
		if (source) {
			if (!FUNC5(tr, source)) {
				FUNC0(LOG_WARNING,
				     "Cannot set transition '%s' "
				     "to source '%s' due to "
				     "infinite recursion",
				     tr->context.name, name);
				FUNC6(source);
				source = NULL;
			}
		} else {
			FUNC0(LOG_WARNING,
			     "Failed to find source '%s' for "
			     "transition '%s'",
			     name, tr->context.name);
		}
	}

	FUNC1(tr);
	tr->transition_sources[0] = source;
	tr->transition_source_active[0] = true;
	tr->transition_alignment = (uint32_t)alignment;
	tr->transition_mode = (enum obs_transition_mode)mode;
	tr->transition_scale_type = (enum obs_transition_scale_type)scale_type;
	tr->transition_cx = (uint32_t)cx;
	tr->transition_cy = (uint32_t)cy;
	FUNC9(tr);

	FUNC8(tr);
	FUNC7(tr);
}