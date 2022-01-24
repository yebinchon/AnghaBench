#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ff_frame {double pts; int /*<<< orphan*/  clock; TYPE_2__* frame; } ;
struct ff_decoder {int /*<<< orphan*/  frame_queue; int /*<<< orphan*/  callbacks; int /*<<< orphan*/  clock; TYPE_1__* codec; scalar_t__ abort; } ;
struct TYPE_5__ {scalar_t__ channels; scalar_t__ sample_rate; scalar_t__ format; } ;
struct TYPE_4__ {scalar_t__ channels; scalar_t__ sample_rate; scalar_t__ sample_fmt; } ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_1__ AVCodecContext ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (struct ff_frame*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ff_frame*) ; 
 struct ff_frame* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(struct ff_decoder *decoder, AVFrame *frame,
                        double best_effort_pts)
{
	struct ff_frame *queue_frame;
	bool call_initialize;

	FUNC5(&decoder->frame_queue);

	if (decoder->abort) {
		return false;
	}

	queue_frame = FUNC4(&decoder->frame_queue);

	AVCodecContext *codec = decoder->codec;
	call_initialize =
	        (queue_frame->frame == NULL ||
	         queue_frame->frame->channels != codec->channels ||
	         queue_frame->frame->sample_rate != codec->sample_rate ||
	         queue_frame->frame->format != codec->sample_fmt);

	if (queue_frame->frame != NULL) {
		//FIXME: this shouldn't happen any more!
		FUNC1(&queue_frame->frame);
	}

	queue_frame->frame = FUNC0(frame);
	queue_frame->clock = FUNC6(decoder->clock);

	if (call_initialize)
		FUNC2(queue_frame, decoder->callbacks);

	queue_frame->pts = best_effort_pts;

	FUNC3(&decoder->frame_queue, queue_frame);

	return true;
}