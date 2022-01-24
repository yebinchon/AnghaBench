#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct TYPE_9__* local; struct TYPE_9__* name; } ;
struct TYPE_8__ {TYPE_2__* index; } ;
struct TYPE_6__ {TYPE_4__* chm_index; TYPE_4__* chm_file; } ;
struct TYPE_7__ {int nItems; TYPE_4__* items; TYPE_4__* keyword; struct TYPE_7__* next; TYPE_1__ merge; } ;
typedef  TYPE_2__ IndexItem ;
typedef  TYPE_3__ HHInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 

void FUNC1(HHInfo *info)
{
    IndexItem *item = info->index, *next;
    int i;

    if(!item) return;
    /* Note: item->merge is identical for all items, only free once */
    FUNC0(item->merge.chm_file);
    FUNC0(item->merge.chm_index);
    while(item) {
        next = item->next;

        FUNC0(item->keyword);
        for(i=0;i<item->nItems;i++) {
            FUNC0(item->items[i].name);
            FUNC0(item->items[i].local);
        }
        FUNC0(item->items);

        item = next;
    }
}