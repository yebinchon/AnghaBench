#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct jack_data {int channels; int /*<<< orphan*/  jack_mutex; int /*<<< orphan*/ * jack_client; int /*<<< orphan*/ ** jack_ports; int /*<<< orphan*/  device; scalar_t__ start_jack_server; } ;
typedef  int /*<<< orphan*/  port_name ;
typedef  int /*<<< orphan*/  jack_port_t ;
typedef  int /*<<< orphan*/  jack_options_t ;
typedef  int int_fast32_t ;

/* Variables and functions */
 int /*<<< orphan*/  JACK_DEFAULT_AUDIO_TYPE ; 
 int /*<<< orphan*/  JackNoStartServer ; 
 int /*<<< orphan*/  JackNullOption ; 
 int /*<<< orphan*/  JackPortIsInput ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jack_process_callback ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct jack_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,unsigned int) ; 

int_fast32_t FUNC9(struct jack_data *data)
{
	FUNC6(&data->jack_mutex);

	if (data->jack_client != NULL)
		goto good;

	jack_options_t jack_option =
		data->start_jack_server ? JackNullOption : JackNoStartServer;

	data->jack_client = FUNC3(data->device, jack_option, 0);
	if (data->jack_client == NULL) {
		FUNC0(LOG_ERROR,
		     "jack_client_open Error:"
		     "Could not create JACK client! %s",
		     data->device);
		goto error;
	}

	data->jack_ports =
		(jack_port_t **)FUNC1(sizeof(jack_port_t *) * data->channels);
	for (unsigned int i = 0; i < data->channels; ++i) {
		char port_name[10] = {'\0'};
		FUNC8(port_name, sizeof(port_name), "in_%u", i + 1);

		data->jack_ports[i] = FUNC4(
			data->jack_client, port_name, JACK_DEFAULT_AUDIO_TYPE,
			JackPortIsInput, 0);
		if (data->jack_ports[i] == NULL) {
			FUNC0(LOG_ERROR,
			     "jack_port_register Error:"
			     "Could not create JACK port! %s",
			     port_name);
			goto error;
		}
	}

	if (FUNC5(data->jack_client, jack_process_callback,
				      data) != 0) {
		FUNC0(LOG_ERROR, "jack_set_process_callback Error");
		goto error;
	}

	if (FUNC2(data->jack_client) != 0) {
		FUNC0(LOG_ERROR, "jack_activate Error:"
				"Could not activate JACK client!");
		goto error;
	}

good:
	FUNC7(&data->jack_mutex);
	return 0;

error:
	FUNC7(&data->jack_mutex);
	return 1;
}