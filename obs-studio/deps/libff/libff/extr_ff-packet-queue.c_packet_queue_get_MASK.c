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
struct ff_packet_queue {int /*<<< orphan*/  mutex; scalar_t__ abort; int /*<<< orphan*/  cond; int /*<<< orphan*/  total_size; int /*<<< orphan*/  count; int /*<<< orphan*/ * last_packet; struct ff_packet_list* first_packet; } ;
struct TYPE_2__ {scalar_t__ size; } ;
struct ff_packet {TYPE_1__ base; } ;
struct ff_packet_list {struct ff_packet packet; struct ff_packet_list* next; } ;

/* Variables and functions */
 int FF_PACKET_EMPTY ; 
 int FF_PACKET_FAIL ; 
 int FF_PACKET_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct ff_packet_list*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct ff_packet_queue *q, struct ff_packet *packet,
                     bool block)
{
	struct ff_packet_list *potential_packet;
	int return_status;

	FUNC2(&q->mutex);

	while (true) {
		potential_packet = q->first_packet;

		if (potential_packet != NULL) {
			q->first_packet = potential_packet->next;

			if (q->first_packet == NULL)
				q->last_packet = NULL;

			q->count--;
			q->total_size -= potential_packet->packet.base.size;
			*packet = potential_packet->packet;
			FUNC0(potential_packet);
			return_status = FF_PACKET_SUCCESS;
			break;

		} else if (!block) {
			return_status = FF_PACKET_EMPTY;
			break;

		} else {
			FUNC1(&q->cond, &q->mutex);
			if (q->abort) {
				return_status = FF_PACKET_FAIL;
				break;
			}
		}
	}

	FUNC3(&q->mutex);

	return return_status;
}