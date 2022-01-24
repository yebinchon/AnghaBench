#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  slabs; void** slab_list; } ;
typedef  TYPE_1__ slabclass_t ;
struct TYPE_5__ {int slab_page_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ mem_limit ; 
 int mem_limit_reached ; 
 scalar_t__ mem_malloced ; 
 void* FUNC1 (int) ; 
 TYPE_3__ settings ; 
 TYPE_1__* slabclass ; 

void FUNC2(void) {
    void *ptr;
    slabclass_t *p = &slabclass[0];
    int len = settings.slab_page_size;

    while (mem_malloced < mem_limit
            && (ptr = FUNC1(len)) != NULL) {
        FUNC0(0);
        p->slab_list[p->slabs++] = ptr;
    }
    mem_limit_reached = true;
}