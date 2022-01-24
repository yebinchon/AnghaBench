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
struct ff_packet_queue {int /*<<< orphan*/  mutex; scalar_t__ total_size; scalar_t__ count; struct ff_packet_list* first_packet; int /*<<< orphan*/  last_packet; } ;
struct TYPE_2__ {int /*<<< orphan*/ * clock; int /*<<< orphan*/  base; } ;
struct ff_packet_list {TYPE_1__ packet; struct ff_packet_list* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ff_packet_list**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct ff_packet_queue *q)
{
	struct ff_packet_list *packet;

	FUNC3(&q->mutex);

	for (packet = q->first_packet; packet != NULL;
	     packet = q->first_packet) {
		q->first_packet = packet->next;
		FUNC0(&packet->packet.base);
		if (packet->packet.clock != NULL)
			FUNC2(&packet->packet.clock);
		FUNC1(&packet);
	}

	q->last_packet = q->first_packet = NULL;
	q->count = 0;
	q->total_size = 0;

	FUNC4(&q->mutex);
}