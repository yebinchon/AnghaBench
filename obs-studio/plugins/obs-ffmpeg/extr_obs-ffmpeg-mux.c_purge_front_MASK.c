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
struct TYPE_3__ {int /*<<< orphan*/  size; } ;
struct ffmpeg_muxer {scalar_t__ cur_size; scalar_t__ cur_time; TYPE_1__ packets; int /*<<< orphan*/  keyframes; } ;
struct encoder_packet {scalar_t__ type; scalar_t__ size; scalar_t__ dts_usec; int /*<<< orphan*/  keyframe; } ;
typedef  int /*<<< orphan*/  pkt ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  first ;

/* Variables and functions */
 scalar_t__ OBS_ENCODER_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct encoder_packet*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct encoder_packet*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct encoder_packet*) ; 

__attribute__((used)) static bool FUNC3(struct ffmpeg_muxer *stream)
{
	struct encoder_packet pkt;
	bool keyframe;

	FUNC1(&stream->packets, &pkt, sizeof(pkt));

	keyframe = pkt.type == OBS_ENCODER_VIDEO && pkt.keyframe;

	if (keyframe)
		stream->keyframes--;

	if (!stream->packets.size) {
		stream->cur_size = 0;
		stream->cur_time = 0;
	} else {
		struct encoder_packet first;
		FUNC0(&stream->packets, &first, sizeof(first));
		stream->cur_time = first.dts_usec;
		stream->cur_size -= (int64_t)pkt.size;
	}

	FUNC2(&pkt);
	return keyframe;
}