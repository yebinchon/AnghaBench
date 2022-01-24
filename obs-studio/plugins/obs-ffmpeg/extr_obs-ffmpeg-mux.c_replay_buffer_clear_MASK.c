#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ size; } ;
struct ffmpeg_muxer {scalar_t__ keyframes; scalar_t__ save_ts; scalar_t__ max_time; scalar_t__ max_size; scalar_t__ cur_time; scalar_t__ cur_size; TYPE_1__ packets; } ;
struct encoder_packet {int dummy; } ;
typedef  int /*<<< orphan*/  pkt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct encoder_packet*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct encoder_packet*) ; 

__attribute__((used)) static inline void FUNC3(struct ffmpeg_muxer *stream)
{
	while (stream->packets.size > 0) {
		struct encoder_packet pkt;
		FUNC1(&stream->packets, &pkt, sizeof(pkt));
		FUNC2(&pkt);
	}

	FUNC0(&stream->packets);
	stream->cur_size = 0;
	stream->cur_time = 0;
	stream->max_size = 0;
	stream->max_time = 0;
	stream->save_ts = 0;
	stream->keyframes = 0;
}