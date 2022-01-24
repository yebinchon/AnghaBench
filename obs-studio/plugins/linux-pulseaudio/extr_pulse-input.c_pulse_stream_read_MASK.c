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
typedef  int /*<<< orphan*/  uint8_t ;
struct obs_source_audio {size_t frames; scalar_t__ timestamp; int /*<<< orphan*/  samples_per_sec; int /*<<< orphan*/ ** data; int /*<<< orphan*/  format; int /*<<< orphan*/  speakers; } ;
typedef  int /*<<< orphan*/  pa_stream ;
struct TYPE_2__ {size_t bytes_per_frame; scalar_t__ first_ts; int /*<<< orphan*/  stream; int /*<<< orphan*/  frames; int /*<<< orphan*/  packets; int /*<<< orphan*/  source; int /*<<< orphan*/  format; int /*<<< orphan*/  samples_per_sec; int /*<<< orphan*/  speakers; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ STARTUP_TIMEOUT_NS ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 TYPE_1__* data ; 
 scalar_t__ FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct obs_source_audio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void const**,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(pa_stream *p, size_t nbytes, void *userdata)
{
	FUNC1(p);
	FUNC1(nbytes);
	FUNC0(userdata);

	const void *frames;
	size_t bytes;

	if (!data->stream)
		goto exit;

	FUNC6(data->stream, &frames, &bytes);

	// check if we got data
	if (!bytes)
		goto exit;

	if (!frames) {
		FUNC2(LOG_ERROR, "Got audio hole of %u bytes",
		     (unsigned int)bytes);
		FUNC5(data->stream);
		goto exit;
	}

	struct obs_source_audio out;
	out.speakers = data->speakers;
	out.samples_per_sec = data->samples_per_sec;
	out.format = FUNC8(data->format);
	out.data[0] = (uint8_t *)frames;
	out.frames = bytes / data->bytes_per_frame;
	out.timestamp = FUNC3(out.frames, out.samples_per_sec);

	if (!data->first_ts)
		data->first_ts = out.timestamp + STARTUP_TIMEOUT_NS;

	if (out.timestamp > data->first_ts)
		FUNC4(data->source, &out);

	data->packets++;
	data->frames += out.frames;

	FUNC5(data->stream);
exit:
	FUNC7(0);
}