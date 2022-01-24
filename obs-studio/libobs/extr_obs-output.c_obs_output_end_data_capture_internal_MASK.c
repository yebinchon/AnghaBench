#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  name; } ;
struct TYPE_15__ {void* stop_code; TYPE_1__ context; int /*<<< orphan*/  end_data_capture_thread; int /*<<< orphan*/  end_data_capture_thread_active; scalar_t__ video; int /*<<< orphan*/  data_active; int /*<<< orphan*/  stopping_event; int /*<<< orphan*/  delay_active; int /*<<< orphan*/  delay_restart_refs; int /*<<< orphan*/  delay_capturing; } ;
typedef  TYPE_2__ obs_output_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 void* OBS_OUTPUT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (TYPE_2__*),TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC14(obs_output_t *output,
						 bool signal)
{
	int ret;

	if (!FUNC7(output, "obs_output_end_data_capture"))
		return;

	if (!FUNC0(output) || !FUNC2(output)) {
		if (signal) {
			FUNC13(output);
			output->stop_code = OBS_OUTPUT_SUCCESS;
			FUNC10(output->stopping_event);
		}
		return;
	}

	if (FUNC4(output)) {
		FUNC9(&output->delay_capturing, false);

		if (!FUNC8(&output->delay_restart_refs)) {
			FUNC9(&output->delay_active, false);
		} else {
			FUNC10(output->stopping_event);
			return;
		}
	}

	FUNC9(&output->data_active, false);

	if (output->video)
		FUNC6(output);

	if (FUNC3(output))
		FUNC12(output->end_data_capture_thread, NULL);

	FUNC9(&output->end_data_capture_thread_active, true);
	ret = FUNC11(&output->end_data_capture_thread, NULL,
			     end_data_capture_thread, output);
	if (ret != 0) {
		FUNC1(LOG_WARNING,
		     "Failed to create end_data_capture_thread "
		     "for output '%s'!",
		     output->context.name);
		FUNC5(output);
	}

	if (signal) {
		FUNC13(output);
		output->stop_code = OBS_OUTPUT_SUCCESS;
	}
}