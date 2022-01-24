#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int capacity; void** slots; } ;
struct ff_frame {int abort; int /*<<< orphan*/  codec; TYPE_1__ frame_queue; int /*<<< orphan*/  packet_queue; int /*<<< orphan*/ * clock; int /*<<< orphan*/ * frame; int /*<<< orphan*/  callbacks; int /*<<< orphan*/  decoder_thread; int /*<<< orphan*/  refresh_timer; } ;
struct ff_decoder {int abort; int /*<<< orphan*/  codec; TYPE_1__ frame_queue; int /*<<< orphan*/  packet_queue; int /*<<< orphan*/ * clock; int /*<<< orphan*/ * frame; int /*<<< orphan*/  callbacks; int /*<<< orphan*/  decoder_thread; int /*<<< orphan*/  refresh_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ff_frame*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ff_frame*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,void**) ; 

void FUNC12(struct ff_decoder *decoder)
{
	void *decoder_thread_result;
	int i;

	FUNC0(decoder != NULL);

	decoder->abort = true;

	FUNC5(&decoder->frame_queue);
	FUNC9(&decoder->packet_queue);

	FUNC8(&decoder->refresh_timer);

	FUNC11(decoder->decoder_thread, &decoder_thread_result);

	for (i = 0; i < decoder->frame_queue.capacity; i++) {
		void *item = decoder->frame_queue.slots[i];
		struct ff_frame *frame = (struct ff_frame *)item;

		FUNC4(frame, decoder->callbacks);

		if (frame != NULL) {
			if (frame->frame != NULL)
				FUNC1(frame->frame);
			if (frame->clock != NULL)
				FUNC7(&frame->clock);
			FUNC2(frame);
		}
	}

	FUNC10(&decoder->packet_queue);
	FUNC6(&decoder->frame_queue);

	FUNC3(decoder->codec);

	FUNC2(decoder);
}