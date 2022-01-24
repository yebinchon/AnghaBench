#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_15__ {scalar_t__ data; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* stop ) (scalar_t__,int /*<<< orphan*/ ) ;} ;
struct TYPE_16__ {TYPE_12__* caption_tail; TYPE_12__* caption_head; int /*<<< orphan*/  stopping_event; void* stop_code; TYPE_2__ context; TYPE_1__ info; int /*<<< orphan*/  delay_capturing; int /*<<< orphan*/  delay_active; int /*<<< orphan*/  reconnect_thread; scalar_t__ reconnect_thread_active; int /*<<< orphan*/  reconnect_stop_event; } ;
typedef  TYPE_3__ obs_output_t ;
struct TYPE_13__ {struct TYPE_13__* next; } ;

/* Variables and functions */
 void* OBS_OUTPUT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_12__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 scalar_t__ FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC13(obs_output_t *output, bool force, uint64_t ts)
{
	bool call_stop = true;
	bool was_reconnecting = false;

	if (FUNC11(output) && !force)
		return;

	FUNC4(output, false);

	FUNC6(output->stopping_event);

	was_reconnecting = FUNC9(output) && !FUNC1(output);
	if (FUNC9(output)) {
		FUNC7(output->reconnect_stop_event);
		if (output->reconnect_thread_active)
			FUNC8(output->reconnect_thread, NULL);
	}

	if (force) {
		if (FUNC1(output)) {
			call_stop = FUNC2(output);
			FUNC5(&output->delay_active, false);
			FUNC5(&output->delay_capturing, false);
			output->stop_code = OBS_OUTPUT_SUCCESS;
			FUNC3(output);
			FUNC7(output->stopping_event);
		} else {
			call_stop = true;
		}
	} else {
		call_stop = true;
	}

	if (output->context.data && call_stop) {
		output->info.stop(output->context.data, ts);

	} else if (was_reconnecting) {
		output->stop_code = OBS_OUTPUT_SUCCESS;
		FUNC10(output);
		FUNC7(output->stopping_event);
	}

	while (output->caption_head) {
		output->caption_tail = output->caption_head->next;
		FUNC0(output->caption_head);
		output->caption_head = output->caption_tail;
	}
}