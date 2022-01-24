#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_t ;
struct video_output_info {scalar_t__ range; scalar_t__ colorspace; int /*<<< orphan*/  format; } ;
struct TYPE_4__ {int /*<<< orphan*/  audio_format; scalar_t__ last_error; } ;
struct ffmpeg_output {int active; int write_thread_active; int /*<<< orphan*/  output; TYPE_1__ ff_data; int /*<<< orphan*/  write_thread; } ;
struct ffmpeg_cfg {int video_bitrate; int audio_bitrate; int gop_size; int video_encoder_id; int audio_encoder_id; int scale_width; int scale_height; int width; int height; scalar_t__ format; int audio_tracks; int /*<<< orphan*/  color_space; int /*<<< orphan*/  color_range; int /*<<< orphan*/  audio_mix_count; void* audio_settings; void* video_settings; void* audio_encoder; void* video_encoder; void* muxer_settings; void* format_mime_type; void* format_name; void* url; } ;
struct audio_convert_info {int /*<<< orphan*/  format; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  AVCOL_RANGE_JPEG ; 
 int /*<<< orphan*/  AVCOL_RANGE_MPEG ; 
 int /*<<< orphan*/  AVCOL_RANGE_UNSPECIFIED ; 
 int /*<<< orphan*/  AVCOL_SPC_BT470BG ; 
 int /*<<< orphan*/  AVCOL_SPC_BT709 ; 
 int /*<<< orphan*/  AVCOL_SPC_RGB ; 
 scalar_t__ AV_PIX_FMT_NONE ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 scalar_t__ VIDEO_CS_709 ; 
 scalar_t__ VIDEO_RANGE_FULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,struct ffmpeg_cfg*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ffmpeg_output*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 void* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct audio_convert_info*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ffmpeg_output*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 struct video_output_info* FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  write_thread ; 

__attribute__((used)) static bool FUNC26(struct ffmpeg_output *output)
{
	video_t *video = FUNC21(output->output);
	const struct video_output_info *voi = FUNC25(video);
	struct ffmpeg_cfg config;
	obs_data_t *settings;
	bool success;
	int ret;

	settings = FUNC16(output->output);

	FUNC11(settings, "gop_size", 120);

	config.url = FUNC9(settings, "url");
	config.format_name = FUNC7(settings, "format_name");
	config.format_mime_type =
		FUNC7(settings, "format_mime_type");
	config.muxer_settings = FUNC9(settings, "muxer_settings");
	config.video_bitrate = (int)FUNC8(settings, "video_bitrate");
	config.audio_bitrate = (int)FUNC8(settings, "audio_bitrate");
	config.gop_size = (int)FUNC8(settings, "gop_size");
	config.video_encoder = FUNC7(settings, "video_encoder");
	config.video_encoder_id =
		(int)FUNC8(settings, "video_encoder_id");
	config.audio_encoder = FUNC7(settings, "audio_encoder");
	config.audio_encoder_id =
		(int)FUNC8(settings, "audio_encoder_id");
	config.video_settings = FUNC9(settings, "video_settings");
	config.audio_settings = FUNC9(settings, "audio_settings");
	config.scale_width = (int)FUNC8(settings, "scale_width");
	config.scale_height = (int)FUNC8(settings, "scale_height");
	config.width = (int)FUNC17(output->output);
	config.height = (int)FUNC14(output->output);
	config.format =
		FUNC22(FUNC24(video));
	config.audio_tracks = (int)FUNC15(output->output);
	config.audio_mix_count = FUNC6(config.audio_tracks);

	if (FUNC5(voi->format)) {
		config.color_range = voi->range == VIDEO_RANGE_FULL
					     ? AVCOL_RANGE_JPEG
					     : AVCOL_RANGE_MPEG;
		config.color_space = voi->colorspace == VIDEO_CS_709
					     ? AVCOL_SPC_BT709
					     : AVCOL_SPC_BT470BG;
	} else {
		config.color_range = AVCOL_RANGE_UNSPECIFIED;
		config.color_space = AVCOL_SPC_RGB;
	}

	if (config.format == AV_PIX_FMT_NONE) {
		FUNC0(LOG_DEBUG, "invalid pixel format used for FFmpeg output");
		return false;
	}

	if (!config.scale_width)
		config.scale_width = config.width;
	if (!config.scale_height)
		config.scale_height = config.height;

	success = FUNC2(&output->ff_data, &config);
	FUNC10(settings);

	if (!success) {
		if (output->ff_data.last_error) {
			FUNC19(output->output,
						  output->ff_data.last_error);
		}
		FUNC1(&output->ff_data);
		return false;
	}

	struct audio_convert_info aci = {.format =
						 output->ff_data.audio_format};

	output->active = true;

	if (!FUNC13(output->output, 0))
		return false;

	ret = FUNC23(&output->write_thread, NULL, write_thread, output);
	if (ret != 0) {
		FUNC3(LOG_WARNING, &output->ff_data,
				 "ffmpeg_output_start: failed to create write "
				 "thread.");
		FUNC4(output);
		return false;
	}

	FUNC20(output->output, NULL);
	FUNC18(output->output, &aci);
	FUNC12(output->output, 0);
	output->write_thread_active = true;
	return true;
}