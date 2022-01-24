#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  sync_type; } ;
struct ff_demuxer {int /*<<< orphan*/ * video_decoder; int /*<<< orphan*/  video_callbacks; int /*<<< orphan*/ * audio_decoder; int /*<<< orphan*/  audio_callbacks; TYPE_1__ clock; TYPE_3__* format_context; } ;
typedef  scalar_t__ int64_t ;
struct TYPE_10__ {scalar_t__ codec_type; } ;
struct TYPE_9__ {unsigned int nb_streams; scalar_t__ start_time; TYPE_2__** streams; } ;
struct TYPE_8__ {scalar_t__ discard; scalar_t__ start_time; int /*<<< orphan*/  time_base; TYPE_4__* codec; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 scalar_t__ AVDISCARD_ALL ; 
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  AV_SYNC_AUDIO_MASTER ; 
 int /*<<< orphan*/  AV_SYNC_VIDEO_MASTER ; 
 int /*<<< orphan*/  AV_TIME_BASE_Q ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ INT64_MAX ; 
 int FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ff_demuxer*,TYPE_2__*) ; 
 int FUNC7 (struct ff_demuxer*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static bool FUNC9(struct ff_demuxer *demuxer)
{
	AVFormatContext *format_context = demuxer->format_context;
	unsigned int i;
	AVStream *audio_stream = NULL;
	AVStream *video_stream = NULL;
	int64_t start_time = INT64_MAX;

	for (i = 0; i < format_context->nb_streams; i++) {
		AVCodecContext *codec = format_context->streams[i]->codec;

		if (codec->codec_type == AVMEDIA_TYPE_VIDEO && !video_stream)
			video_stream = format_context->streams[i];

		if (codec->codec_type == AVMEDIA_TYPE_AUDIO && !audio_stream)
			audio_stream = format_context->streams[i];
	}

	int default_stream_index =
	        FUNC1(demuxer->format_context);

	if (default_stream_index >= 0) {
		AVStream *stream =
		        format_context->streams[default_stream_index];

		if (stream->codec->codec_type == AVMEDIA_TYPE_AUDIO)
			demuxer->clock.sync_type = AV_SYNC_AUDIO_MASTER;
		else if (stream->codec->codec_type == AVMEDIA_TYPE_VIDEO)
			demuxer->clock.sync_type = AV_SYNC_VIDEO_MASTER;
	}

	if (video_stream != NULL)
		FUNC6(demuxer, video_stream);

	if (audio_stream != NULL)
		FUNC6(demuxer, audio_stream);

	if (demuxer->video_decoder == NULL && demuxer->audio_decoder == NULL) {
		return false;
	}

	if (!FUNC7(demuxer)) {
		return false;
	}

	for (i = 0; i < format_context->nb_streams; i++) {
		AVStream *st = format_context->streams[i];
		int64_t st_start_time;

		if (st->discard == AVDISCARD_ALL ||
		    st->start_time == AV_NOPTS_VALUE) {
			continue;
		}

		st_start_time = FUNC2(st->start_time, st->time_base,
		                             AV_TIME_BASE_Q);
		start_time = FUNC0(start_time, st_start_time);
	}

	if (format_context->start_time != AV_NOPTS_VALUE) {
		if (start_time > format_context->start_time ||
		    start_time == INT64_MAX) {
			start_time = format_context->start_time;
		}
	}

	if (start_time != INT64_MAX) {
		FUNC8(demuxer->video_decoder, start_time);
		FUNC8(demuxer->audio_decoder, start_time);
	}

	if (demuxer->audio_decoder != NULL) {
		if (FUNC3(&demuxer->audio_callbacks)) {
			FUNC5(demuxer->audio_decoder);
		} else {
			FUNC4(demuxer->audio_decoder);
			demuxer->audio_decoder = NULL;
			if (!FUNC7(demuxer))
				return false;
		}
	}

	if (demuxer->video_decoder != NULL) {
		if (FUNC3(&demuxer->video_callbacks)) {
			FUNC5(demuxer->video_decoder);
		} else {
			FUNC4(demuxer->video_decoder);
			demuxer->video_decoder = NULL;
			if (!FUNC7(demuxer))
				return false;
		}
	}

	return FUNC7(demuxer);
}