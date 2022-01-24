#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t slabs_clsid; struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef  TYPE_1__ item ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__** heads ; 
 TYPE_1__** tails ; 

void FUNC1(item *it) {
    item **head, **tail;
    head = &heads[it->slabs_clsid];
    tail = &tails[it->slabs_clsid];

    if (*head == it) {
        FUNC0(it->prev == 0);
        *head = it->next;
    }
    if (*tail == it) {
        FUNC0(it->next == 0);
        *tail = it->prev;
    }
    FUNC0(it->next != it);
    FUNC0(it->prev != it);

    if (it->next) it->next->prev = it->prev;
    if (it->prev) it->prev->next = it->next;
    return;
}