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
struct nn_list_item {struct nn_list_item* prev; struct nn_list_item* next; } ;
struct nn_list {struct nn_list_item* last; struct nn_list_item* first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nn_list_item*) ; 

void FUNC2 (struct nn_list *self, struct nn_list_item *item,
    struct nn_list_item *it)
{
    FUNC0 (!FUNC1 (item));

    item->prev = it ? it->prev : self->last;
    item->next = it;
    if (item->prev)
        item->prev->next = item;
    if (item->next)
        item->next->prev = item;
    if (!self->first || self->first == it)
        self->first = item;
    if (!it)
        self->last = item;
}