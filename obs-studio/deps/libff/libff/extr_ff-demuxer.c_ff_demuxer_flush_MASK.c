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
struct ff_demuxer {TYPE_1__* audio_decoder; TYPE_2__* video_decoder; } ;
struct TYPE_4__ {int /*<<< orphan*/  packet_queue; int /*<<< orphan*/ * stream; } ;
struct TYPE_3__ {int /*<<< orphan*/  packet_queue; int /*<<< orphan*/ * stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct ff_demuxer *demuxer)
{
	if (demuxer->video_decoder != NULL &&
	    demuxer->video_decoder->stream != NULL) {
		FUNC0(&demuxer->video_decoder->packet_queue);
		FUNC1(
		        &demuxer->video_decoder->packet_queue);
	}

	if (demuxer->audio_decoder != NULL &&
	    demuxer->audio_decoder->stream != NULL) {
		FUNC0(&demuxer->audio_decoder->packet_queue);
		FUNC1(
		        &demuxer->audio_decoder->packet_queue);
	}
}