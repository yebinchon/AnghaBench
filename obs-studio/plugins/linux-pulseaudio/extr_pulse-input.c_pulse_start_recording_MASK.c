#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
struct pulse_data {scalar_t__ format; int /*<<< orphan*/  device; int /*<<< orphan*/  stream; int /*<<< orphan*/  source; int /*<<< orphan*/  speakers; int /*<<< orphan*/  bytes_per_frame; int /*<<< orphan*/  channels; int /*<<< orphan*/  samples_per_sec; } ;
typedef  int /*<<< orphan*/  pa_stream_flags_t ;
struct TYPE_8__ {scalar_t__ format; int /*<<< orphan*/  channels; int /*<<< orphan*/  rate; } ;
typedef  TYPE_1__ pa_sample_spec ;
typedef  int /*<<< orphan*/  pa_channel_map ;
struct TYPE_9__ {void* tlength; void* prebuf; void* minreq; void* maxlength; int /*<<< orphan*/  fragsize; } ;
typedef  TYPE_2__ pa_buffer_attr ;
typedef  int int_fast32_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 scalar_t__ PA_SAMPLE_INVALID ; 
 int /*<<< orphan*/  PA_STREAM_ADJUST_LATENCY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  pulse_server_info ; 
 int /*<<< orphan*/  pulse_source_info ; 
 int /*<<< orphan*/  FUNC12 (struct pulse_data*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pulse_stream_read ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static int_fast32_t FUNC15(struct pulse_data *data)
{
	if (FUNC9(pulse_server_info, (void *)data) < 0) {
		FUNC0(LOG_ERROR, "Unable to get server info !");
		return -1;
	}

	if (FUNC10(pulse_source_info, data->device,
				  (void *)data) < 0) {
		FUNC0(LOG_ERROR, "Unable to get source info !");
		return -1;
	}
	if (data->format == PA_SAMPLE_INVALID) {
		FUNC0(LOG_ERROR,
		     "An error occurred while getting the source info!");
		return -1;
	}

	pa_sample_spec spec;
	spec.format = data->format;
	spec.rate = data->samples_per_sec;
	spec.channels = data->channels;

	if (!FUNC3(&spec)) {
		FUNC0(LOG_ERROR, "Sample spec is not valid");
		return -1;
	}

	data->speakers = FUNC8(spec.channels);
	data->bytes_per_frame = FUNC2(&spec);

	pa_channel_map channel_map = FUNC7(data->speakers);

	data->stream = FUNC13(FUNC1(data->source),
					&spec, &channel_map);
	if (!data->stream) {
		FUNC0(LOG_ERROR, "Unable to create stream");
		return -1;
	}

	FUNC11();
	FUNC5(data->stream, pulse_stream_read,
				    (void *)data);
	FUNC14();

	pa_buffer_attr attr;
	attr.fragsize = FUNC6(25000, &spec);
	attr.maxlength = (uint32_t)-1;
	attr.minreq = (uint32_t)-1;
	attr.prebuf = (uint32_t)-1;
	attr.tlength = (uint32_t)-1;

	pa_stream_flags_t flags = PA_STREAM_ADJUST_LATENCY;

	FUNC11();
	int_fast32_t ret = FUNC4(data->stream, data->device,
						    &attr, flags);
	FUNC14();
	if (ret < 0) {
		FUNC12(data);
		FUNC0(LOG_ERROR, "Unable to connect to stream");
		return -1;
	}

	FUNC0(LOG_INFO, "Started recording from '%s'", data->device);
	return 0;
}