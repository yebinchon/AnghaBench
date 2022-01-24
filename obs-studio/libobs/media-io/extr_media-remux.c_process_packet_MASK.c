#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int duration; int pos; void* dts; void* pts; } ;
struct TYPE_6__ {int /*<<< orphan*/  time_base; } ;
typedef  TYPE_1__ AVStream ;
typedef  TYPE_2__ AVPacket ;

/* Variables and functions */
 int AV_ROUND_NEAR_INF ; 
 int AV_ROUND_PASS_MINMAX ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(AVPacket *pkt, AVStream *in_stream,
				  AVStream *out_stream)
{
	pkt->pts = FUNC1(pkt->pts, in_stream->time_base,
				    out_stream->time_base,
				    AV_ROUND_NEAR_INF | AV_ROUND_PASS_MINMAX);
	pkt->dts = FUNC1(pkt->dts, in_stream->time_base,
				    out_stream->time_base,
				    AV_ROUND_NEAR_INF | AV_ROUND_PASS_MINMAX);
	pkt->duration = (int)FUNC0(pkt->duration, in_stream->time_base,
					  out_stream->time_base);
	pkt->pos = -1;
}