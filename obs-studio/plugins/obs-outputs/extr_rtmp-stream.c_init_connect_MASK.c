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
typedef  int uint32_t ;
struct rtmp_stream {int got_first_video; int max_shutdown_time_sec; long audio_bitrate; long dbr_orig_bitrate; long dbr_cur_bitrate; int dbr_inc_bitrate; int dbr_enabled; int drop_threshold_usec; int pframe_drop_threshold_usec; void* low_latency_mode; void* new_socket_loop; int /*<<< orphan*/  bind_ip; int /*<<< orphan*/  output; scalar_t__ dbr_inc_timeout; scalar_t__ dbr_est_bitrate; scalar_t__ dbr_data_size; int /*<<< orphan*/  dbr_frames; int /*<<< orphan*/  key; int /*<<< orphan*/  path; int /*<<< orphan*/  password; int /*<<< orphan*/  username; scalar_t__ min_priority; scalar_t__ dropped_frames; scalar_t__ total_bytes_sent; int /*<<< orphan*/  encode_error; int /*<<< orphan*/  disconnected; int /*<<< orphan*/  send_thread; } ;
typedef  int /*<<< orphan*/  obs_service_t ;
typedef  int /*<<< orphan*/  obs_encoder_t ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  int int64_t ;

/* Variables and functions */
 int OBS_ENCODER_CAP_DYN_BITRATE ; 
 int /*<<< orphan*/  OPT_BIND_IP ; 
 char* OPT_DROP_THRESHOLD ; 
 int /*<<< orphan*/  OPT_DYN_BITRATE ; 
 int /*<<< orphan*/  OPT_LOWLATENCY_ENABLED ; 
 char* OPT_MAX_SHUTDOWN_TIME_SEC ; 
 int /*<<< orphan*/  OPT_NEWSOCKETLOOP_ENABLED ; 
 char* OPT_PFRAME_DROP_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rtmp_stream*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ) ; 
 char const* FUNC16 (int /*<<< orphan*/ *) ; 
 char const* FUNC17 (int /*<<< orphan*/ *) ; 
 char const* FUNC18 (int /*<<< orphan*/ *) ; 
 char const* FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (struct rtmp_stream*) ; 

__attribute__((used)) static bool FUNC23(struct rtmp_stream *stream)
{
	obs_service_t *service;
	obs_data_t *settings;
	const char *bind_ip;
	int64_t drop_p;
	int64_t drop_b;
	uint32_t caps;

	if (FUNC22(stream)) {
		FUNC21(stream->send_thread, NULL);
	}

	FUNC3(stream);

	service = FUNC13(stream->output);
	if (!service)
		return false;

	FUNC20(&stream->disconnected, false);
	FUNC20(&stream->encode_error, false);
	stream->total_bytes_sent = 0;
	stream->dropped_frames = 0;
	stream->min_priority = 0;
	stream->got_first_video = false;

	settings = FUNC14(stream->output);
	FUNC1(&stream->path, FUNC18(service));
	FUNC1(&stream->key, FUNC16(service));
	FUNC1(&stream->username, FUNC19(service));
	FUNC1(&stream->password, FUNC17(service));
	FUNC2(&stream->path);
	FUNC2(&stream->key);
	drop_b = (int64_t)FUNC6(settings, OPT_DROP_THRESHOLD);
	drop_p = (int64_t)FUNC6(settings, OPT_PFRAME_DROP_THRESHOLD);
	stream->max_shutdown_time_sec =
		(int)FUNC6(settings, OPT_MAX_SHUTDOWN_TIME_SEC);

	obs_encoder_t *venc = FUNC15(stream->output);
	obs_encoder_t *aenc = FUNC11(stream->output, 0);
	obs_data_t *vsettings = FUNC10(venc);
	obs_data_t *asettings = FUNC10(aenc);

	FUNC0(&stream->dbr_frames);
	stream->audio_bitrate = (long)FUNC6(asettings, "bitrate");
	stream->dbr_data_size = 0;
	stream->dbr_orig_bitrate = (long)FUNC6(vsettings, "bitrate");
	stream->dbr_cur_bitrate = stream->dbr_orig_bitrate;
	stream->dbr_est_bitrate = 0;
	stream->dbr_inc_bitrate = stream->dbr_orig_bitrate / 10;
	stream->dbr_inc_timeout = 0;
	stream->dbr_enabled = FUNC5(settings, OPT_DYN_BITRATE);

	caps = FUNC9(venc);
	if ((caps & OBS_ENCODER_CAP_DYN_BITRATE) == 0) {
		stream->dbr_enabled = false;
	}

	if (FUNC12(stream->output) != 0) {
		stream->dbr_enabled = false;
	}

	if (stream->dbr_enabled) {
		FUNC4("Dynamic bitrate enabled.  Dropped frames begone!");
	}

	FUNC8(vsettings);
	FUNC8(asettings);

	if (drop_p < (drop_b + 200))
		drop_p = drop_b + 200;

	stream->drop_threshold_usec = 1000 * drop_b;
	stream->pframe_drop_threshold_usec = 1000 * drop_p;

	bind_ip = FUNC7(settings, OPT_BIND_IP);
	FUNC1(&stream->bind_ip, bind_ip);

	stream->new_socket_loop =
		FUNC5(settings, OPT_NEWSOCKETLOOP_ENABLED);
	stream->low_latency_mode =
		FUNC5(settings, OPT_LOWLATENCY_ENABLED);

	FUNC8(settings);
	return true;
}