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
struct TYPE_2__ {int /*<<< orphan*/  size; int /*<<< orphan*/  pts; } ;
struct ff_packet {TYPE_1__ base; } ;
struct ff_decoder {int /*<<< orphan*/  clock; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ AV_NOPTS_VALUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ff_decoder*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ff_packet*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ff_decoder *decoder,
                              struct ff_packet *packet)
{
	int64_t start_time = FUNC0(decoder->clock);
	if (start_time != AV_NOPTS_VALUE) {
		if (FUNC1(decoder, start_time,
		                                    packet->base.pts))
			FUNC2(packet, packet->base.size);
	}
}