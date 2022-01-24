#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* encoded_packet ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct obs_output {int /*<<< orphan*/  interleaved_mutex; TYPE_3__ context; TYPE_2__ info; } ;
struct TYPE_4__ {size_t num; struct obs_output** array; } ;
struct obs_encoder {int initialized; int /*<<< orphan*/  callbacks_mutex; int /*<<< orphan*/  callbacks; int /*<<< orphan*/  outputs_mutex; TYPE_1__ outputs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_output*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct obs_encoder*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct obs_encoder *encoder)
{
	if (encoder) {
		FUNC2(&encoder->outputs_mutex);
		for (size_t i = 0; i < encoder->outputs.num; i++) {
			struct obs_output *output = encoder->outputs.array[i];
			FUNC1(output);

			FUNC2(&output->interleaved_mutex);
			output->info.encoded_packet(output->context.data, NULL);
			FUNC3(&output->interleaved_mutex);
		}
		FUNC3(&encoder->outputs_mutex);

		FUNC2(&encoder->callbacks_mutex);
		FUNC0(encoder->callbacks);
		FUNC3(&encoder->callbacks_mutex);

		FUNC4(encoder, false);
		encoder->initialized = false;
	}
}