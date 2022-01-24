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
struct buffer_list {int /*<<< orphan*/ * tail; int /*<<< orphan*/  size; struct buffer_entry* head; } ;
struct buffer_entry {int /*<<< orphan*/  buf; struct buffer_entry* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct buffer_list *ol)
{
    if (ol && ol->head)
    {
        struct buffer_entry *e = ol->head->next;
        FUNC1(&ol->head->buf);
        FUNC0(ol->head);
        ol->head = e;
        --ol->size;
        if (!e)
        {
            ol->tail = NULL;
        }
    }
}