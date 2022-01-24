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
struct TYPE_5__ {int /*<<< orphan*/  array; } ;
struct TYPE_4__ {char* stream_key; char* vendor_name; scalar_t__ peak_kbps; scalar_t__ fps_den; scalar_t__ fps_num; int /*<<< orphan*/  vendor_version; int /*<<< orphan*/  ingest_hostname; int /*<<< orphan*/  audio_codec; int /*<<< orphan*/  video_codec; } ;
struct ftl_stream {scalar_t__ peak_kbps; int drop_threshold_usec; int max_shutdown_time_sec; TYPE_2__ bind_ip; TYPE_2__ path; TYPE_2__ password; TYPE_2__ username; TYPE_1__ params; int /*<<< orphan*/  ftl_handle; int /*<<< orphan*/  output; scalar_t__ min_priority; scalar_t__ dropped_frames; scalar_t__ total_bytes_sent; int /*<<< orphan*/  encode_error; int /*<<< orphan*/  disconnected; int /*<<< orphan*/  send_thread; } ;
typedef  int /*<<< orphan*/  obs_service_t ;
typedef  int /*<<< orphan*/  obs_encoder_t ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  int int64_t ;
typedef  scalar_t__ ftl_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTL_AUDIO_OPUS ; 
 scalar_t__ FTL_BAD_OR_INVALID_STREAM_KEY ; 
 scalar_t__ FTL_SUCCESS ; 
 int /*<<< orphan*/  FTL_VIDEO_H264 ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int OBS_OUTPUT_ERROR ; 
 int OBS_OUTPUT_INVALID_STREAM ; 
 int OBS_OUTPUT_SUCCESS ; 
 int /*<<< orphan*/  OBS_VERSION ; 
 int /*<<< orphan*/  OPT_BIND_IP ; 
 char* OPT_DROP_THRESHOLD ; 
 char* OPT_MAX_SHUTDOWN_TIME_SEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ftl_stream*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 char* FUNC14 (int /*<<< orphan*/ *) ; 
 char const* FUNC15 (int /*<<< orphan*/ *) ; 
 char const* FUNC16 (int /*<<< orphan*/ *) ; 
 char const* FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (struct ftl_stream*) ; 

__attribute__((used)) static int FUNC21(struct ftl_stream *stream)
{
	obs_service_t *service;
	obs_data_t *settings;
	const char *bind_ip, *key;
	ftl_status_t status_code;

	FUNC6("init_connect");

	if (FUNC20(stream))
		FUNC19(stream->send_thread, NULL);

	FUNC3(stream);

	service = FUNC11(stream->output);
	if (!service) {
		return OBS_OUTPUT_ERROR;
	}

	FUNC18(&stream->disconnected, false);
	FUNC18(&stream->encode_error, false);
	stream->total_bytes_sent = 0;
	stream->dropped_frames = 0;
	stream->min_priority = 0;

	settings = FUNC12(stream->output);
	obs_encoder_t *video_encoder =
		FUNC13(stream->output);
	obs_data_t *video_settings = FUNC10(video_encoder);

	FUNC1(&stream->path, FUNC16(service));
	key = FUNC14(service);

	int target_bitrate = (int)FUNC7(video_settings, "bitrate");
	int peak_bitrate = (int)((float)target_bitrate * 1.1f);

	//minimum overshoot tolerance of 10%
	if (peak_bitrate < target_bitrate) {
		peak_bitrate = target_bitrate;
	}

	stream->params.stream_key = (char *)key;
	stream->params.video_codec = FTL_VIDEO_H264;
	stream->params.audio_codec = FTL_AUDIO_OPUS;
	stream->params.ingest_hostname = stream->path.array;
	stream->params.vendor_name = "OBS Studio";
	stream->params.vendor_version = OBS_VERSION;
	stream->params.peak_kbps = stream->peak_kbps < 0 ? 0
							 : stream->peak_kbps;

	//not required when using ftl_ingest_send_media_dts
	stream->params.fps_num = 0;
	stream->params.fps_den = 0;

	status_code = FUNC4(&stream->ftl_handle, &stream->params);
	if (status_code != FTL_SUCCESS) {
		if (status_code == FTL_BAD_OR_INVALID_STREAM_KEY) {
			FUNC0(LOG_ERROR, "Invalid Key (%s)",
			     FUNC5(status_code));
			return OBS_OUTPUT_INVALID_STREAM;
		} else {
			FUNC0(LOG_ERROR, "Failed to create ingest handle (%s)",
			     FUNC5(status_code));
			return OBS_OUTPUT_ERROR;
		}
	}

	FUNC1(&stream->username, FUNC17(service));
	FUNC1(&stream->password, FUNC15(service));
	FUNC2(&stream->path);

	stream->drop_threshold_usec =
		(int64_t)FUNC7(settings, OPT_DROP_THRESHOLD) * 1000;
	stream->max_shutdown_time_sec =
		(int)FUNC7(settings, OPT_MAX_SHUTDOWN_TIME_SEC);

	bind_ip = FUNC8(settings, OPT_BIND_IP);
	FUNC1(&stream->bind_ip, bind_ip);

	FUNC9(settings);
	FUNC9(video_settings);
	return OBS_OUTPUT_SUCCESS;
}