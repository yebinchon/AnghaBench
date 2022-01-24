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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ffmpeg_muxer {size_t total_bytes; int /*<<< orphan*/  pipe; } ;
struct ffm_packet_info {int index; int /*<<< orphan*/  keyframe; int /*<<< orphan*/  type; int /*<<< orphan*/  size; int /*<<< orphan*/  dts; int /*<<< orphan*/  pts; } ;
struct encoder_packet {scalar_t__ type; int size; int /*<<< orphan*/  const* data; int /*<<< orphan*/  keyframe; scalar_t__ track_idx; int /*<<< orphan*/  dts; int /*<<< orphan*/  pts; } ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 int /*<<< orphan*/  FFM_PACKET_AUDIO ; 
 int /*<<< orphan*/  FFM_PACKET_VIDEO ; 
 scalar_t__ OBS_ENCODER_VIDEO ; 
 size_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ffmpeg_muxer*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static bool FUNC3(struct ffmpeg_muxer *stream,
			 struct encoder_packet *packet)
{
	bool is_video = packet->type == OBS_ENCODER_VIDEO;
	size_t ret;

	struct ffm_packet_info info = {.pts = packet->pts,
				       .dts = packet->dts,
				       .size = (uint32_t)packet->size,
				       .index = (int)packet->track_idx,
				       .type = is_video ? FFM_PACKET_VIDEO
							: FFM_PACKET_AUDIO,
				       .keyframe = packet->keyframe};

	ret = FUNC0(stream->pipe, (const uint8_t *)&info,
				    sizeof(info));
	if (ret != sizeof(info)) {
		FUNC2("os_process_pipe_write for info structure failed");
		FUNC1(stream);
		return false;
	}

	ret = FUNC0(stream->pipe, packet->data, packet->size);
	if (ret != packet->size) {
		FUNC2("os_process_pipe_write for packet data failed");
		FUNC1(stream);
		return false;
	}

	stream->total_bytes += packet->size;
	return true;
}