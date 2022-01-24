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
struct ff_demuxer {int abort; scalar_t__ format_context; int /*<<< orphan*/ * video_decoder; int /*<<< orphan*/ * audio_decoder; struct ff_demuxer* input_format; struct ff_demuxer* input; int /*<<< orphan*/  demuxer_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ff_demuxer*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void**) ; 

void FUNC4(struct ff_demuxer *demuxer)
{
	void *demuxer_thread_result;

	demuxer->abort = true;

	FUNC3(demuxer->demuxer_thread, &demuxer_thread_result);

	if (demuxer->input != NULL)
		FUNC0(demuxer->input);

	if (demuxer->input_format != NULL)
		FUNC0(demuxer->input_format);

	if (demuxer->audio_decoder != NULL)
		FUNC2(demuxer->audio_decoder);

	if (demuxer->video_decoder != NULL)
		FUNC2(demuxer->video_decoder);

	if (demuxer->format_context)
		FUNC1(&demuxer->format_context);

	FUNC0(demuxer);
}