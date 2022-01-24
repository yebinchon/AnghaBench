#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int it_flags; scalar_t__ nbytes; size_t slabs_clsid; struct TYPE_6__* next; struct TYPE_6__* prev; } ;
typedef  TYPE_1__ item ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__** heads ; 
 TYPE_1__** tails ; 

item *FUNC1(item *it) {
    item **head, **tail;
    FUNC0(it->it_flags == 1);
    FUNC0(it->nbytes == 0);
    head = &heads[it->slabs_clsid];
    tail = &tails[it->slabs_clsid];

    /* We've hit the head, pop off */
    if (it->prev == 0) {
        FUNC0(*head == it);
        if (it->next) {
            *head = it->next;
            FUNC0(it->next->prev == it);
            it->next->prev = 0;
        }
        return NULL; /* Done */
    }

    /* Swing ourselves in front of the next item */
    /* NB: If there is a prev, we can't be the head */
    FUNC0(it->prev != it);
    if (it->prev) {
        if (*head == it->prev) {
            /* Prev was the head, now we're the head */
            *head = it;
        }
        if (*tail == it) {
            /* We are the tail, now they are the tail */
            *tail = it->prev;
        }
        FUNC0(it->next != it);
        if (it->next) {
            FUNC0(it->prev->next == it);
            it->prev->next = it->next;
            it->next->prev = it->prev;
        } else {
            /* Tail. Move this above? */
            it->prev->next = 0;
        }
        /* prev->prev's next is it->prev */
        it->next = it->prev;
        it->prev = it->next->prev;
        it->next->prev = it;
        /* New it->prev now, if we're not at the head. */
        if (it->prev) {
            it->prev->next = it;
        }
    }
    FUNC0(it->next != it);
    FUNC0(it->prev != it);

    return it->next; /* success */
}