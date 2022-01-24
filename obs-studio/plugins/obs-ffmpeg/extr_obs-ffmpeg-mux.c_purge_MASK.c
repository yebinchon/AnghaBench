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
struct ffmpeg_muxer {int /*<<< orphan*/  packets; } ;
struct encoder_packet {scalar_t__ type; scalar_t__ keyframe; } ;
typedef  int /*<<< orphan*/  pkt ;

/* Variables and functions */
 scalar_t__ OBS_ENCODER_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct encoder_packet*,int) ; 
 scalar_t__ FUNC1 (struct ffmpeg_muxer*) ; 

__attribute__((used)) static inline void FUNC2(struct ffmpeg_muxer *stream)
{
	if (FUNC1(stream)) {
		struct encoder_packet pkt;

		for (;;) {
			FUNC0(&stream->packets, &pkt,
					     sizeof(pkt));
			if (pkt.type == OBS_ENCODER_VIDEO && pkt.keyframe)
				return;

			FUNC1(stream);
		}
	}
}