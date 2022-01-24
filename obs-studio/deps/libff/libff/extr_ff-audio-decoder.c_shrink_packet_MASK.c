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
struct TYPE_2__ {int size; int /*<<< orphan*/ * data; } ;
struct ff_packet {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline void FUNC2(struct ff_packet *packet, int packet_length)
{
	if (packet_length <= packet->base.size) {
		int remaining = packet->base.size - packet_length;

		FUNC1(packet->base.data, &packet->base.data[packet_length],
		        remaining);
		FUNC0(&packet->base, remaining);
	}
}