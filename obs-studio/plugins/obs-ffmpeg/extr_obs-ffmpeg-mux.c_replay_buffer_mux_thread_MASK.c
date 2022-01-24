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
struct TYPE_4__ {size_t num; struct encoder_packet* array; } ;
struct TYPE_3__ {int /*<<< orphan*/  array; } ;
struct ffmpeg_muxer {int /*<<< orphan*/  muxing; TYPE_2__ mux_packets; int /*<<< orphan*/ * pipe; TYPE_1__ path; } ;
struct encoder_packet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct encoder_packet*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ffmpeg_muxer*) ; 
 int /*<<< orphan*/  FUNC6 (struct ffmpeg_muxer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct ffmpeg_muxer*,struct encoder_packet*) ; 

__attribute__((used)) static void *FUNC9(void *data)
{
	struct ffmpeg_muxer *stream = data;

	FUNC6(stream, stream->path.array);

	if (!stream->pipe) {
		FUNC7("Failed to create process pipe");
		goto error;
	}

	if (!FUNC5(stream)) {
		FUNC7("Could not write headers for file '%s'",
		     stream->path.array);
		goto error;
	}

	for (size_t i = 0; i < stream->mux_packets.num; i++) {
		struct encoder_packet *pkt = &stream->mux_packets.array[i];
		FUNC8(stream, pkt);
		FUNC2(pkt);
	}

	FUNC1("Wrote replay buffer to '%s'", stream->path.array);

error:
	FUNC4(stream->pipe);
	stream->pipe = NULL;
	FUNC0(stream->mux_packets);
	FUNC3(&stream->muxing, false);
	return NULL;
}