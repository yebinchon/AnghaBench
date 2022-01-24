#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct obs_output_info {int /*<<< orphan*/  (* create ) (int /*<<< orphan*/ ,struct obs_output*) ;int /*<<< orphan*/  (* get_defaults ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  id; } ;
struct TYPE_9__ {int /*<<< orphan*/  data; int /*<<< orphan*/  settings; } ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; } ;
struct obs_output {int owns_info_id; int reconnect_retry_sec; int reconnect_retry_max; int valid; TYPE_4__ context; TYPE_2__* control; int /*<<< orphan*/  reconnect_stop_event; struct obs_output_info info; int /*<<< orphan*/  audio; int /*<<< orphan*/  video; int /*<<< orphan*/  stopping_event; TYPE_1__ pause; int /*<<< orphan*/  caption_mutex; int /*<<< orphan*/  delay_mutex; int /*<<< orphan*/  interleaved_mutex; } ;
typedef  int /*<<< orphan*/  obs_weak_output_t ;
typedef  struct obs_output obs_output_t ;
typedef  int /*<<< orphan*/  obs_data_t ;
struct TYPE_8__ {int /*<<< orphan*/  first_output; int /*<<< orphan*/  outputs_mutex; } ;
struct TYPE_10__ {TYPE_3__ data; } ;
struct TYPE_7__ {struct obs_output* output; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  OS_EVENT_TYPE_MANUAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 void* FUNC2 (int) ; 
 struct obs_output_info* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct obs_output*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__* obs ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct obs_output*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct obs_output*) ; 

obs_output_t *FUNC15(const char *id, const char *name,
				obs_data_t *settings, obs_data_t *hotkey_data)
{
	const struct obs_output_info *info = FUNC3(id);
	struct obs_output *output;
	int ret;

	output = FUNC2(sizeof(struct obs_output));
	FUNC12(&output->interleaved_mutex);
	FUNC12(&output->delay_mutex);
	FUNC12(&output->caption_mutex);
	FUNC12(&output->pause.mutex);

	if (FUNC11(&output->interleaved_mutex, NULL) != 0)
		goto fail;
	if (FUNC11(&output->delay_mutex, NULL) != 0)
		goto fail;
	if (FUNC11(&output->caption_mutex, NULL) != 0)
		goto fail;
	if (FUNC11(&output->pause.mutex, NULL) != 0)
		goto fail;
	if (FUNC9(&output->stopping_event, OS_EVENT_TYPE_MANUAL) != 0)
		goto fail;
	if (!FUNC4(output, name, settings, hotkey_data))
		goto fail;

	FUNC10(output->stopping_event);

	if (!info) {
		FUNC0(LOG_ERROR, "Output ID '%s' not found", id);

		output->info.id = FUNC1(id);
		output->owns_info_id = true;
	} else {
		output->info = *info;
	}
	output->video = FUNC7();
	output->audio = FUNC6();
	if (output->info.get_defaults)
		output->info.get_defaults(output->context.settings);

	ret = FUNC9(&output->reconnect_stop_event,
			    OS_EVENT_TYPE_MANUAL);
	if (ret < 0)
		goto fail;

	output->reconnect_retry_sec = 2;
	output->reconnect_retry_max = 20;
	output->valid = true;

	output->control = FUNC2(sizeof(obs_weak_output_t));
	output->control->output = output;

	FUNC5(&output->context, &obs->data.outputs_mutex,
				&obs->data.first_output);

	if (info)
		output->context.data =
			info->create(output->context.settings, output);
	if (!output->context.data)
		FUNC0(LOG_ERROR, "Failed to create output '%s'!", name);

	FUNC0(LOG_DEBUG, "output '%s' (%s) created", name, id);
	return output;

fail:
	FUNC8(output);
	return NULL;
}