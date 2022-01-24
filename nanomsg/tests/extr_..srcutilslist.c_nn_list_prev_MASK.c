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
struct nn_list_item {scalar_t__ prev; } ;
struct nn_list {struct nn_list_item* last; } ;

/* Variables and functions */
 scalar_t__ NN_LIST_NOTINLIST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

struct nn_list_item *FUNC1 (struct nn_list *self,
    struct nn_list_item *it)
{
    if (!it)
        return self->last;
    FUNC0 (it->prev != NN_LIST_NOTINLIST);
    return it->prev;
}