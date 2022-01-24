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
struct noise_suppress_data {size_t channels; int /*<<< orphan*/  output_data; int /*<<< orphan*/  info_buffer; struct noise_suppress_data** copy_buffers; struct noise_suppress_data** segment_buffers; int /*<<< orphan*/ * output_buffers; int /*<<< orphan*/ * input_buffers; int /*<<< orphan*/ * states; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct noise_suppress_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *data)
{
	struct noise_suppress_data *ng = data;

	for (size_t i = 0; i < ng->channels; i++) {
		FUNC3(ng->states[i]);
		FUNC1(&ng->input_buffers[i]);
		FUNC1(&ng->output_buffers[i]);
	}

	FUNC0(ng->segment_buffers[0]);
	FUNC0(ng->copy_buffers[0]);
	FUNC1(&ng->info_buffer);
	FUNC2(ng->output_data);
	FUNC0(ng);
}