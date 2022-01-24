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
struct encoder_packet {int timebase_den; int /*<<< orphan*/  size; int /*<<< orphan*/  data; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  obs_output_t ;
typedef  int /*<<< orphan*/  obs_encoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_ENCODER_AUDIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC3 (struct rtmp_stream*,struct encoder_packet*,int,size_t) ; 

__attribute__((used)) static bool FUNC4(struct rtmp_stream *stream, size_t idx,
			      bool *next)
{
	obs_output_t *context = stream->output;
	obs_encoder_t *aencoder = FUNC2(context, idx);
	uint8_t *header;

	struct encoder_packet packet = {.type = OBS_ENCODER_AUDIO,
					.timebase_den = 1};

	if (!aencoder) {
		*next = false;
		return true;
	}

	FUNC1(aencoder, &header, &packet.size);
	packet.data = FUNC0(header, packet.size);
	return FUNC3(stream, &packet, true, idx) >= 0;
}