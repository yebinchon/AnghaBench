#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ data; int flags; int /*<<< orphan*/  pts; } ;
struct ff_packet {TYPE_4__ base; int /*<<< orphan*/ * clock; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_7__ {TYPE_1__ base; } ;
struct TYPE_8__ {TYPE_2__ flush_packet; } ;
struct ff_decoder {int finished; int /*<<< orphan*/ * clock; int /*<<< orphan*/  codec; TYPE_3__ packet_queue; scalar_t__ eof; int /*<<< orphan*/  abort; } ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 scalar_t__ AV_NOPTS_VALUE ; 
 int AV_PKT_FLAG_KEY ; 
 int FF_PACKET_EMPTY ; 
 int FF_PACKET_FAIL ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 double FUNC9 (struct ff_decoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ff_decoder*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_3__*,struct ff_packet*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ff_decoder*,int /*<<< orphan*/ *,double) ; 

void *FUNC13(void *opaque_video_decoder)
{
	struct ff_decoder *decoder = (struct ff_decoder *)opaque_video_decoder;

	struct ff_packet packet = {0};
	int complete;
	AVFrame *frame = FUNC0();
	int ret;
	bool key_frame;

	while (!decoder->abort) {
		if (decoder->eof)
			ret = FUNC11(&decoder->packet_queue, &packet,
			                       0);
		else
			ret = FUNC11(&decoder->packet_queue, &packet,
			                       1);

		if (ret == FF_PACKET_EMPTY || ret == FF_PACKET_FAIL) {
			// should we just use abort here?
			break;
		}

		if (packet.base.data ==
		    decoder->packet_queue.flush_packet.base.data) {
			FUNC5(decoder->codec);
			continue;
		}

		// We received a reset packet with a new clock
		if (packet.clock != NULL) {
			if (decoder->clock != NULL)
				FUNC7(&decoder->clock);
			decoder->clock = FUNC6(&packet.clock);
			FUNC3(&packet.base);
			continue;
		}

		int64_t start_time = FUNC8(decoder->clock);
		key_frame = packet.base.flags & AV_PKT_FLAG_KEY;

		// We can only make decisions on keyframes for
		// hw decoders (maybe just OSX?)
		// For now, always make drop decisions on keyframes
		bool frame_drop_check = key_frame;
		// Must have a proper packet pts to drop frames here
		frame_drop_check &= start_time != AV_NOPTS_VALUE;

		if (frame_drop_check)
			FUNC10(decoder, start_time,
			                                packet.base.pts);

		FUNC4(decoder->codec, frame, &complete,
		                      &packet.base);

		// Did we get an entire video frame?  This doesn't guarantee
		// there is a picture to show for some codecs, but we still want
		// to adjust our various internal clocks for the next frame
		if (complete) {
			// If we don't have a good PTS, try to guess based
			// on last received PTS provided plus prediction
			// This function returns a pts scaled to stream
			// time base
			double best_effort_pts =
			        FUNC9(decoder, frame);

			FUNC12(decoder, frame, best_effort_pts);
			FUNC2(frame);
		}

		FUNC3(&packet.base);
	}

	if (decoder->clock != NULL)
		FUNC7(&decoder->clock);

	FUNC1(&frame);

	decoder->finished = true;

	return NULL;
}