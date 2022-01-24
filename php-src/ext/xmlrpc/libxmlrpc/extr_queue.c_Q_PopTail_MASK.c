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
struct TYPE_6__ {scalar_t__ size; int /*<<< orphan*/  sorted; TYPE_2__* tail; TYPE_2__* cursor; TYPE_2__* head; } ;
typedef  TYPE_1__ queue ;
struct TYPE_7__ {int /*<<< orphan*/ * next; int /*<<< orphan*/ * prev; void* data; } ;
typedef  TYPE_2__ node ;
typedef  int /*<<< orphan*/  datanode ;

/* Variables and functions */
 int /*<<< orphan*/  False_ ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

void *FUNC2(queue *q)
{
   datanode    *p;
   void        *d;

   if(FUNC0(q))
      return NULL;

   d = q->tail->data;
   p = q->tail->prev;
   FUNC1(q->tail);
   q->size--;

   if(q->size == 0)
      q->head = q->tail = q->cursor = NULL;
   else {
      q->tail = (node *)p;
      q->tail->next = NULL;
      q->cursor = q->tail;
   }

   q->sorted = False_;

   return d;
}