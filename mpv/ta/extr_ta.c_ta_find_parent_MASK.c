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
struct ta_header {scalar_t__ size; TYPE_1__* ext; struct ta_header* next; } ;
struct TYPE_2__ {int /*<<< orphan*/  header; } ;

/* Variables and functions */
 scalar_t__ CHILDREN_SENTINEL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ta_header* FUNC1 (void*) ; 

void *FUNC2(void *ptr)
{
    struct ta_header *h = FUNC1(ptr);
    if (!h || !h->next)
        return NULL;
    for (struct ta_header *cur = h->next; cur != h; cur = cur->next) {
        if (cur->size == CHILDREN_SENTINEL)
            return FUNC0(cur->ext->header);
    }
    return NULL;
}