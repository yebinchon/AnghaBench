#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ data; } ;
struct TYPE_15__ {scalar_t__ type; int output_flags; int /*<<< orphan*/  (* video_tick ) (scalar_t__,float) ;} ;
struct TYPE_14__ {size_t num; TYPE_4__** array; } ;
struct TYPE_17__ {int showing; int active; int async_rendered; int deinterlace_rendered; TYPE_3__ context; TYPE_2__ info; TYPE_1__ filters; int /*<<< orphan*/  activate_refs; int /*<<< orphan*/  show_refs; scalar_t__ filter_texrender; scalar_t__ defer_update; } ;
typedef  TYPE_4__ obs_source_t ;

/* Variables and functions */
 int OBS_SOURCE_ASYNC ; 
 scalar_t__ OBS_SOURCE_TYPE_TRANSITION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,float) ; 

void FUNC10(obs_source_t *source, float seconds)
{
	bool now_showing, now_active;

	if (!FUNC6(source, "obs_source_video_tick"))
		return;

	if (source->info.type == OBS_SOURCE_TYPE_TRANSITION)
		FUNC7(source);

	if ((source->info.output_flags & OBS_SOURCE_ASYNC) != 0)
		FUNC1(source);

	if (source->defer_update)
		FUNC5(source);

	/* reset the filter render texture information once every frame */
	if (source->filter_texrender)
		FUNC3(source->filter_texrender);

	/* call show/hide if the reference changed */
	now_showing = !!source->show_refs;
	if (now_showing != source->showing) {
		if (now_showing) {
			FUNC8(source);
		} else {
			FUNC4(source);
		}

		if (source->filters.num) {
			for (size_t i = source->filters.num; i > 0; i--) {
				obs_source_t *filter =
					source->filters.array[i - 1];
				if (now_showing) {
					FUNC8(filter);
				} else {
					FUNC4(filter);
				}
			}
		}

		source->showing = now_showing;
	}

	/* call activate/deactivate if the reference changed */
	now_active = !!source->activate_refs;
	if (now_active != source->active) {
		if (now_active) {
			FUNC0(source);
		} else {
			FUNC2(source);
		}

		if (source->filters.num) {
			for (size_t i = source->filters.num; i > 0; i--) {
				obs_source_t *filter =
					source->filters.array[i - 1];
				if (now_active) {
					FUNC0(filter);
				} else {
					FUNC2(filter);
				}
			}
		}

		source->active = now_active;
	}

	if (source->context.data && source->info.video_tick)
		source->info.video_tick(source->context.data, seconds);

	source->async_rendered = false;
	source->deinterlace_rendered = false;
}