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
struct TYPE_7__ {struct TYPE_7__* next; } ;
struct TYPE_6__ {int selected; scalar_t__ nb_items; TYPE_2__* items; } ;
typedef  TYPE_1__ COMBOEX_INFO ;
typedef  TYPE_2__ CBE_ITEMDATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2 (COMBOEX_INFO *infoPtr)
{
    if (infoPtr->items)
    {
        CBE_ITEMDATA *item, *next;

        item = infoPtr->items;
        while (item) {
            next = item->next;
            FUNC0 (item);
            FUNC1 (item);
            item = next;
        }
        infoPtr->items = 0;
    }

    infoPtr->selected = -1;
    infoPtr->nb_items = 0;
}