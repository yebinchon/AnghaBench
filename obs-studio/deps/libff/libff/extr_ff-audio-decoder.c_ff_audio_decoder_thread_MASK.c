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
struct ff_packet {int /*<<< orphan*/  base; int /*<<< orphan*/  member_0; } ;
struct ff_decoder {int finished; int /*<<< orphan*/ * clock; int /*<<< orphan*/  abort; } ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ff_decoder*,struct ff_packet*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 double FUNC6 (struct ff_decoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ff_decoder*,int /*<<< orphan*/ *,double) ; 

void *FUNC8(void *opaque_audio_decoder)
{
	struct ff_decoder *decoder = opaque_audio_decoder;

	struct ff_packet packet = {0};
	bool frame_complete;
	AVFrame *frame = FUNC0();
	int ret;

	while (!decoder->abort) {
		ret = FUNC4(decoder, &packet, frame, &frame_complete);
		if (ret == 0) {
			break;
		} else if (ret < 0) {
			FUNC3(&packet.base);
			continue;
		}

		// Did we get a audio frame?
		if (frame_complete) {
			// If we don't have a good PTS, try to guess based
			// on last received PTS provided plus prediction
			// This function returns a pts scaled to stream
			// time base
			double best_effort_pts =
			        FUNC6(decoder, frame);
			FUNC7(decoder, frame, best_effort_pts);
			FUNC2(frame);
		}

		FUNC3(&packet.base);
	}

	if (decoder->clock != NULL)
		FUNC5(&decoder->clock);

	FUNC1(&frame);

	decoder->finished = true;

	return NULL;
}