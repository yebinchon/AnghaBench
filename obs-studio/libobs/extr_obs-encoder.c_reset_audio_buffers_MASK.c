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
struct obs_encoder {size_t planes; int /*<<< orphan*/  framesize_bytes; int /*<<< orphan*/ * audio_output_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_encoder*) ; 

__attribute__((used)) static inline void FUNC2(struct obs_encoder *encoder)
{
	FUNC1(encoder);

	for (size_t i = 0; i < encoder->planes; i++)
		encoder->audio_output_buffer[i] =
			FUNC0(encoder->framesize_bytes);
}