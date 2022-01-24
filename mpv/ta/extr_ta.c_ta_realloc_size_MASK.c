#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  union aligned_header {int dummy; } aligned_header ;
struct ta_header {size_t size; TYPE_6__* ext; TYPE_2__* prev; TYPE_1__* next; } ;
struct TYPE_11__ {TYPE_4__* prev; TYPE_3__* next; } ;
struct TYPE_12__ {TYPE_5__ children; struct ta_header* header; } ;
struct TYPE_10__ {TYPE_5__* next; } ;
struct TYPE_9__ {TYPE_5__* prev; } ;
struct TYPE_8__ {struct ta_header* next; } ;
struct TYPE_7__ {struct ta_header* prev; } ;

/* Variables and functions */
 size_t MAX_ALLOC ; 
 void* FUNC0 (struct ta_header*) ; 
 struct ta_header* FUNC1 (void*) ; 
 struct ta_header* FUNC2 (struct ta_header*,int) ; 
 void* FUNC3 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct ta_header*) ; 
 int /*<<< orphan*/  FUNC5 (struct ta_header*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 

void *FUNC7(void *ta_parent, void *ptr, size_t size)
{
    if (size >= MAX_ALLOC)
        return NULL;
    if (!size) {
        FUNC6(ptr);
        return NULL;
    }
    if (!ptr)
        return FUNC3(ta_parent, size);
    struct ta_header *h = FUNC1(ptr);
    struct ta_header *old_h = h;
    if (h->size == size)
        return ptr;
    FUNC5(h);
    h = FUNC2(h, sizeof(union aligned_header) + size);
    FUNC4(h ? h : old_h);
    if (!h)
        return NULL;
    h->size = size;
    if (h != old_h) {
        if (h->next) {
            // Relink siblings
            h->next->prev = h;
            h->prev->next = h;
        }
        if (h->ext) {
            // Relink children
            h->ext->header = h;
            h->ext->children.next->prev = &h->ext->children;
            h->ext->children.prev->next = &h->ext->children;
        }
    }
    return FUNC0(h);
}