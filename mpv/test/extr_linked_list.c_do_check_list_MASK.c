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
struct the_list {struct list_item* tail; struct list_item* head; } ;
struct TYPE_2__ {struct list_item* prev; struct list_item* next; } ;
struct list_item {int v; TYPE_1__ list_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static bool FUNC1(struct the_list *lst, int *c, int num_c)
{
    if (!lst->head)
        FUNC0(!lst->tail);
    if (!lst->tail)
        FUNC0(!lst->head);

    for (struct list_item *cur = lst->head; cur; cur = cur->list_node.next) {
        if (cur->list_node.prev) {
            FUNC0(cur->list_node.prev->list_node.next == cur);
            FUNC0(lst->head != cur);
        } else {
            FUNC0(lst->head == cur);
        }
        if (cur->list_node.next) {
            FUNC0(cur->list_node.next->list_node.prev == cur);
            FUNC0(lst->tail != cur);
        } else {
            FUNC0(lst->tail == cur);
        }

        if (num_c < 1)
            return false;
        if (c[0] != cur->v)
            return false;

        num_c--;
        c++;
    }

    if (num_c)
        return false;

    return true;
}