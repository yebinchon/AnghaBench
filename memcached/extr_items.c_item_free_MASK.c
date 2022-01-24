#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int it_flags; size_t slabs_clsid; scalar_t__ refcount; } ;
typedef  TYPE_1__ item ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,float) ; 
 int ITEM_LINKED ; 
 unsigned int FUNC1 (TYPE_1__*) ; 
 size_t FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__** heads ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,size_t,unsigned int) ; 
 TYPE_1__** tails ; 

void FUNC5(item *it) {
    size_t ntotal = FUNC2(it);
    unsigned int clsid;
    FUNC3((it->it_flags & ITEM_LINKED) == 0);
    FUNC3(it != heads[it->slabs_clsid]);
    FUNC3(it != tails[it->slabs_clsid]);
    FUNC3(it->refcount == 0);

    /* so slab size changer can tell later if item is already free or not */
    clsid = FUNC1(it);
    FUNC0(it, 'F');
    FUNC4(it, ntotal, clsid);
}