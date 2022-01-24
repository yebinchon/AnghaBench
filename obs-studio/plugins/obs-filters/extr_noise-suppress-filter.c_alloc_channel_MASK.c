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
typedef  int /*<<< orphan*/  uint32_t ;
struct noise_suppress_data {int /*<<< orphan*/ * output_buffers; int /*<<< orphan*/ * input_buffers; int /*<<< orphan*/ * states; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct noise_suppress_data *ng,
				 uint32_t sample_rate, size_t channel,
				 size_t frames)
{
	ng->states[channel] =
		FUNC1((int)frames, sample_rate);

	FUNC0(&ng->input_buffers[channel], frames * sizeof(float));
	FUNC0(&ng->output_buffers[channel], frames * sizeof(float));
}