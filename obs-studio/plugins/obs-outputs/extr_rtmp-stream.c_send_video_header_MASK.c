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
struct rtmp_stream {int /*<<< orphan*/ * output; } ;
struct encoder_packet {int timebase_den; int keyframe; int /*<<< orphan*/  data; int /*<<< orphan*/  size; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  obs_output_t ;
typedef  int /*<<< orphan*/  obs_encoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_ENCODER_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC3 (struct rtmp_stream*,struct encoder_packet*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct rtmp_stream *stream)
{
	obs_output_t *context = stream->output;
	obs_encoder_t *vencoder = FUNC1(context);
	uint8_t *header;
	size_t size;

	struct encoder_packet packet = {
		.type = OBS_ENCODER_VIDEO, .timebase_den = 1, .keyframe = true};

	FUNC0(vencoder, &header, &size);
	packet.size = FUNC2(&packet.data, header, size);
	return FUNC3(stream, &packet, true, 0) >= 0;
}