#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int is_hw_decoding; int /*<<< orphan*/  video_packet_queue_size; int /*<<< orphan*/  audio_packet_queue_size; int /*<<< orphan*/  video_frame_queue_size; int /*<<< orphan*/  audio_frame_queue_size; int /*<<< orphan*/  frame_drop; } ;
struct TYPE_3__ {int /*<<< orphan*/  sync_type; } ;
struct ff_demuxer {TYPE_2__ options; TYPE_1__ clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_FRAME_QUEUE_SIZE ; 
 int /*<<< orphan*/  AUDIO_PACKET_QUEUE_SIZE ; 
 int /*<<< orphan*/  AVDISCARD_DEFAULT ; 
 int /*<<< orphan*/  DEFAULT_AV_SYNC_TYPE ; 
 int /*<<< orphan*/  VIDEO_FRAME_QUEUE_SIZE ; 
 int /*<<< orphan*/  VIDEO_PACKET_QUEUE_SIZE ; 
 struct ff_demuxer* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

struct ff_demuxer *FUNC5()
{
	struct ff_demuxer *demuxer;

	FUNC1();
	FUNC2();
	FUNC3();
	FUNC4();

	demuxer = FUNC0(sizeof(struct ff_demuxer));
	if (demuxer == NULL)
		return NULL;

	demuxer->clock.sync_type = DEFAULT_AV_SYNC_TYPE;
	demuxer->options.frame_drop = AVDISCARD_DEFAULT;
	demuxer->options.audio_frame_queue_size = AUDIO_FRAME_QUEUE_SIZE;
	demuxer->options.video_frame_queue_size = VIDEO_FRAME_QUEUE_SIZE;
	demuxer->options.audio_packet_queue_size = AUDIO_PACKET_QUEUE_SIZE;
	demuxer->options.video_packet_queue_size = VIDEO_PACKET_QUEUE_SIZE;
	demuxer->options.is_hw_decoding = false;

	return demuxer;
}