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
struct jack_data {int channels; int /*<<< orphan*/  jack_mutex; int /*<<< orphan*/ * jack_client; int /*<<< orphan*/ ** jack_ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct jack_data *data)
{
	FUNC3(&data->jack_mutex);

	if (data->jack_client) {
		if (data->jack_ports != NULL) {
			for (int i = 0; i < data->channels; ++i) {
				if (data->jack_ports[i] != NULL)
					FUNC2(
						data->jack_client,
						data->jack_ports[i]);
			}
			FUNC0(data->jack_ports);
			data->jack_ports = NULL;
		}
		FUNC1(data->jack_client);
		data->jack_client = NULL;
	}
	FUNC4(&data->jack_mutex);
}