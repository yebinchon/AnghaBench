#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ff_packet {int /*<<< orphan*/  base; int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {scalar_t__ is_looping; } ;
struct ff_demuxer {int abort; TYPE_4__* video_decoder; TYPE_4__* audio_decoder; TYPE_1__ options; TYPE_3__* format_context; int /*<<< orphan*/  input; } ;
struct TYPE_11__ {int eof; } ;
struct TYPE_10__ {TYPE_2__* pb; } ;
struct TYPE_9__ {scalar_t__ error; scalar_t__ eof_reached; } ;
typedef  TYPE_2__ AVIOContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (TYPE_4__*,struct ff_packet*) ; 
 scalar_t__ FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (struct ff_demuxer*) ; 
 int /*<<< orphan*/  FUNC9 (struct ff_demuxer*) ; 
 int /*<<< orphan*/  FUNC10 (struct ff_demuxer*) ; 
 int /*<<< orphan*/  FUNC11 (struct ff_demuxer*,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC12 (struct ff_demuxer*) ; 

__attribute__((used)) static void *FUNC13(void *opaque)
{
	struct ff_demuxer *demuxer = (struct ff_demuxer *)opaque;
	int result;

	struct ff_packet packet = {0};

	if (!FUNC11(demuxer, &demuxer->format_context))
		goto fail;

	FUNC0(demuxer->format_context, 0, demuxer->input, 0);

	if (!FUNC9(demuxer))
		goto fail;

	FUNC8(demuxer);

	while (!demuxer->abort) {
		// failed to seek (looping?)
		if (!FUNC10(demuxer))
			break;

		if (FUNC7(demuxer->audio_decoder) ||
		    FUNC7(demuxer->video_decoder)) {
			FUNC5(10 * 1000); // 10ms
			continue;
		}

		result = FUNC4(demuxer->format_context, &packet.base);
		if (result < 0) {
			bool eof = false;
			if (result == AVERROR_EOF) {
				eof = true;
			} else if (demuxer->format_context->pb != NULL) {
				AVIOContext *io_context =
				        demuxer->format_context->pb;
				if (io_context->error == 0) {
					FUNC5(100 * 1000); // 100ms
					continue;
				} else {
					if (io_context->eof_reached != 0)
						eof = true;
				}
			}

			if (eof) {
				if (demuxer->options.is_looping) {
					FUNC12(demuxer);
				} else {
					break;
				}
				continue;
			} else {
				FUNC3(NULL, AV_LOG_ERROR,
				       "av_read_frame() failed: %s",
				       FUNC1(result));
				break;
			}
		}

		if (FUNC6(demuxer->video_decoder, &packet))
			continue;
		else if (FUNC6(demuxer->audio_decoder, &packet))
			continue;
		else
			FUNC2(&packet.base);
	}
	if (demuxer->audio_decoder != NULL)
		demuxer->audio_decoder->eof = true;
	if (demuxer->video_decoder != NULL)
		demuxer->video_decoder->eof = true;
fail:
	demuxer->abort = true;

	return NULL;
}