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
struct ffmpeg_data {int num_audio_streams; int /*<<< orphan*/  audio_streams; TYPE_1__* output; } ;
struct TYPE_4__ {scalar_t__ video_codec; scalar_t__ audio_codec; } ;
struct TYPE_3__ {TYPE_2__* oformat; } ;
typedef  TYPE_2__ AVOutputFormat ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_NONE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ffmpeg_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ffmpeg_data*) ; 

__attribute__((used)) static inline bool FUNC3(struct ffmpeg_data *data)
{
	AVOutputFormat *format = data->output->oformat;

	if (format->video_codec != AV_CODEC_ID_NONE)
		if (!FUNC2(data))
			return false;

	if (format->audio_codec != AV_CODEC_ID_NONE &&
	    data->num_audio_streams) {
		data->audio_streams =
			FUNC0(1, data->num_audio_streams * sizeof(void *));
		for (int i = 0; i < data->num_audio_streams; i++) {
			if (!FUNC1(data, i))
				return false;
		}
	}

	return true;
}