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
struct TYPE_4__ {int size; int perslab; scalar_t__ slabs; char** slab_list; } ;
typedef  TYPE_1__ slabclass_t ;
struct TYPE_5__ {int slab_chunk_size_max; int slab_page_size; scalar_t__ slab_reassign; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int const) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int const) ; 
 size_t SLAB_GLOBAL_PAGE_POOL ; 
 char* FUNC2 () ; 
 scalar_t__ FUNC3 (unsigned int const) ; 
 scalar_t__ mem_limit ; 
 int mem_limit_reached ; 
 scalar_t__ mem_malloced ; 
 char* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,size_t) ; 
 TYPE_3__ settings ; 
 TYPE_1__* slabclass ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int const) ; 

__attribute__((used)) static int FUNC7(const unsigned int id) {
    slabclass_t *p = &slabclass[id];
    slabclass_t *g = &slabclass[SLAB_GLOBAL_PAGE_POOL];
    int len = (settings.slab_reassign || settings.slab_chunk_size_max != settings.slab_page_size)
        ? settings.slab_page_size
        : p->size * p->perslab;
    char *ptr;

    if ((mem_limit && mem_malloced + len > mem_limit && p->slabs > 0
         && g->slabs == 0)) {
        mem_limit_reached = true;
        FUNC1(id);
        return 0;
    }

    if ((FUNC3(id) == 0) ||
        (((ptr = FUNC2()) == NULL) &&
        ((ptr = FUNC4((size_t)len)) == 0))) {

        FUNC1(id);
        return 0;
    }

    FUNC5(ptr, 0, (size_t)len);
    FUNC6(ptr, id);

    p->slab_list[p->slabs++] = ptr;
    FUNC0(id);

    return 1;
}