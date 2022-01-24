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
struct TYPE_2__ {int prev; } ;
struct timeout_queue {TYPE_1__ head; } ;
struct lwan_connection {int next; int prev; } ;

/* Variables and functions */
 struct lwan_connection* FUNC0 (struct timeout_queue*,int) ; 
 int FUNC1 (struct timeout_queue*,struct lwan_connection*) ; 

void FUNC2(struct timeout_queue *tq,
                          struct lwan_connection *new_node)
{
    new_node->next = -1;
    new_node->prev = tq->head.prev;
    struct lwan_connection *prev = FUNC0(tq, tq->head.prev);
    tq->head.prev = prev->next = FUNC1(tq, new_node);
}