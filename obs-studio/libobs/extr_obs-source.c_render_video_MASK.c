#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ type; int output_flags; scalar_t__ video_render; } ;
struct TYPE_16__ {scalar_t__ num; } ;
struct TYPE_15__ {int /*<<< orphan*/  data; } ;
struct TYPE_18__ {scalar_t__ filter_target; TYPE_3__ info; int /*<<< orphan*/  rendering_filter; TYPE_2__ filters; scalar_t__ filter_parent; int /*<<< orphan*/  enabled; TYPE_1__ context; } ;
typedef  TYPE_4__ obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  GS_DEBUG_COLOR_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int OBS_SOURCE_ASYNC ; 
 scalar_t__ OBS_SOURCE_TYPE_FILTER ; 
 scalar_t__ OBS_SOURCE_TYPE_INPUT ; 
 int OBS_SOURCE_VIDEO ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 

__attribute__((used)) static inline void FUNC13(obs_source_t *source)
{
	if (source->info.type != OBS_SOURCE_TYPE_FILTER &&
	    (source->info.output_flags & OBS_SOURCE_VIDEO) == 0) {
		if (source->filter_parent)
			FUNC10(source);
		return;
	}

	if (source->info.type == OBS_SOURCE_TYPE_INPUT &&
	    (source->info.output_flags & OBS_SOURCE_ASYNC) != 0 &&
	    !source->rendering_filter) {
		if (FUNC4(source))
			FUNC3(source);
		FUNC11(source);
	}

	if (!source->context.data || !source->enabled) {
		if (source->filter_parent)
			FUNC10(source);
		return;
	}

	FUNC0(GS_DEBUG_COLOR_SOURCE,
				     FUNC5(source->info.type),
				     FUNC6(source));

	if (source->filters.num && !source->rendering_filter)
		FUNC9(source);

	else if (source->info.video_render)
		FUNC7(source);

	else if (source->filter_target)
		FUNC12(source->filter_target);

	else if (FUNC4(source))
		FUNC2(source);

	else
		FUNC8(source);

	FUNC1();
}