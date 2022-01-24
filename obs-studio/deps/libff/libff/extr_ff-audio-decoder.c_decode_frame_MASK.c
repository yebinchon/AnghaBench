#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ size; int /*<<< orphan*/ * data; } ;
struct ff_packet {TYPE_7__ base; int /*<<< orphan*/ * clock; } ;
struct TYPE_9__ {int /*<<< orphan*/ * data; } ;
struct TYPE_10__ {TYPE_1__ base; } ;
struct TYPE_12__ {TYPE_2__ flush_packet; } ;
struct ff_decoder {int /*<<< orphan*/  codec; TYPE_4__ packet_queue; scalar_t__ eof; } ;
struct TYPE_11__ {scalar_t__ nb_samples; int /*<<< orphan*/  format; } ;
typedef  TYPE_3__ AVFrame ;

/* Variables and functions */
 int FF_PACKET_EMPTY ; 
 int FF_PACKET_FAIL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ff_decoder*,struct ff_packet*) ; 
 int /*<<< orphan*/  FUNC5 (struct ff_decoder*,struct ff_packet*) ; 
 int FUNC6 (TYPE_4__*,struct ff_packet*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ff_packet*,int) ; 

__attribute__((used)) static int FUNC8(struct ff_decoder *decoder, struct ff_packet *packet,
                        AVFrame *frame, bool *frame_complete)
{
	int packet_length;
	int ret;

	while (true) {
		if (decoder->eof)
			ret = FUNC6(&decoder->packet_queue, packet,
			                       0);
		else
			ret = FUNC6(&decoder->packet_queue, packet,
			                       1);

		if (ret == FF_PACKET_EMPTY) {
			return 0;
		} else if (ret == FF_PACKET_FAIL) {
			return -1;
		}

		if (packet->base.data ==
		    decoder->packet_queue.flush_packet.base.data) {
			FUNC3(decoder->codec);
			continue;
		}

		// Packet has a new clock (reset packet)
		if (packet->clock != NULL)
			if (!FUNC5(decoder, packet))
				return -1;

		while (packet->base.size > 0) {
			int complete;

			FUNC4(decoder, packet);

			packet_length = FUNC2(decoder->codec,
			                                      frame, &complete,
			                                      &packet->base);

			if (packet_length < 0)
				break;

			FUNC7(packet, packet_length);

			if (complete == 0 || frame->nb_samples <= 0)
				continue;

			*frame_complete = complete != 0;

			return frame->nb_samples *
			       FUNC0(frame->format);
		}

		if (packet->base.data != NULL)
			FUNC1(&packet->base);
	}
}