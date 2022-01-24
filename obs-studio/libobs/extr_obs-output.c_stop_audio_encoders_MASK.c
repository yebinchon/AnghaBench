#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * audio_encoders; } ;
typedef  TYPE_1__ obs_output_t ;
typedef  int /*<<< orphan*/  encoded_callback_t ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static inline void FUNC2(obs_output_t *output,
				       encoded_callback_t encoded_callback)
{
	size_t num_mixes = FUNC0(output);

	for (size_t i = 0; i < num_mixes; i++) {
		FUNC1(output->audio_encoders[i], encoded_callback,
				 output);
	}
}