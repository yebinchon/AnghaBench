#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  size; } ;
struct rtmp_stream {long dbr_prev_bitrate; long dbr_est_bitrate; long dbr_cur_bitrate; scalar_t__ dbr_inc_timeout; TYPE_1__ dbr_frames; scalar_t__ dbr_data_size; } ;

/* Variables and functions */
 scalar_t__ DBR_INC_TIMER ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,long,long) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static bool FUNC4(struct rtmp_stream *stream)
{
	long prev_bitrate = stream->dbr_prev_bitrate;
	long est_bitrate = 0;
	long new_bitrate;

	if (stream->dbr_est_bitrate &&
	    stream->dbr_est_bitrate < stream->dbr_cur_bitrate) {
		stream->dbr_data_size = 0;
		FUNC1(&stream->dbr_frames, NULL,
				    stream->dbr_frames.size);
		est_bitrate = stream->dbr_est_bitrate / 100 * 100;
		if (est_bitrate < 50) {
			est_bitrate = 50;
		}
	}

#if 0
	if (prev_bitrate && est_bitrate) {
		if (prev_bitrate < est_bitrate) {
			blog(LOG_INFO, "going back to prev bitrate: "
					"prev_bitrate (%d) < est_bitrate (%d)",
					prev_bitrate,
					est_bitrate);
			new_bitrate = prev_bitrate;
		} else {
			new_bitrate = est_bitrate;
		}
		new_bitrate = est_bitrate;
	} else if (prev_bitrate) {
		new_bitrate = prev_bitrate;
		info("going back to prev bitrate");

	} else if (est_bitrate) {
		new_bitrate = est_bitrate;

	} else {
		return false;
	}
#else
	if (est_bitrate) {
		new_bitrate = est_bitrate;

	} else if (prev_bitrate) {
		new_bitrate = prev_bitrate;
		FUNC2("going back to prev bitrate");

	} else {
		return false;
	}

	if (new_bitrate == stream->dbr_cur_bitrate) {
		return false;
	}
#endif

	stream->dbr_prev_bitrate = 0;
	stream->dbr_cur_bitrate = new_bitrate;
	stream->dbr_inc_timeout = FUNC3() + DBR_INC_TIMER;
	FUNC2("bitrate decreased to: %ld", stream->dbr_cur_bitrate);
	return true;
}