#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* file; } ;
struct ffmpeg_mux {TYPE_3__* output; TYPE_1__ params; } ;
struct TYPE_6__ {TYPE_2__* oformat; } ;
struct TYPE_5__ {void* audio_codec; void* video_codec; } ;
typedef  int /*<<< orphan*/  AVOutputFormat ;

/* Variables and functions */
 void* AV_CODEC_ID_NONE ; 
 int FFM_ERROR ; 
 int FFM_SUCCESS ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ffmpeg_mux*) ; 
 int /*<<< orphan*/  FUNC5 (struct ffmpeg_mux*) ; 
 int FUNC6 (struct ffmpeg_mux*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC7(struct ffmpeg_mux *ffm)
{
	AVOutputFormat *output_format;
	int ret;

	output_format = FUNC1(NULL, ffm->params.file, NULL);
	if (output_format == NULL) {
		FUNC3(stderr, "Couldn't find an appropriate muxer for '%s'\n",
			ffm->params.file);
		return FFM_ERROR;
	}

	ret = FUNC2(&ffm->output, output_format, NULL,
					     NULL);
	if (ret < 0) {
		FUNC3(stderr, "Couldn't initialize output context: %s\n",
			FUNC0(ret));
		return FFM_ERROR;
	}

	ffm->output->oformat->video_codec = AV_CODEC_ID_NONE;
	ffm->output->oformat->audio_codec = AV_CODEC_ID_NONE;

	if (!FUNC5(ffm)) {
		FUNC4(ffm);
		return FFM_ERROR;
	}

	ret = FUNC6(ffm);
	if (ret != FFM_SUCCESS) {
		FUNC4(ffm);
		return ret;
	}

	return FFM_SUCCESS;
}