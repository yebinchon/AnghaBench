
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef union aligned_header {int dummy; } aligned_header ;
struct ta_header {size_t size; TYPE_6__* ext; TYPE_2__* prev; TYPE_1__* next; } ;
struct TYPE_11__ {TYPE_4__* prev; TYPE_3__* next; } ;
struct TYPE_12__ {TYPE_5__ children; struct ta_header* header; } ;
struct TYPE_10__ {TYPE_5__* next; } ;
struct TYPE_9__ {TYPE_5__* prev; } ;
struct TYPE_8__ {struct ta_header* next; } ;
struct TYPE_7__ {struct ta_header* prev; } ;


 size_t MAX_ALLOC ;
 void* PTR_FROM_HEADER (struct ta_header*) ;
 struct ta_header* get_header (void*) ;
 struct ta_header* realloc (struct ta_header*,int) ;
 void* ta_alloc_size (void*,size_t) ;
 int ta_dbg_add (struct ta_header*) ;
 int ta_dbg_remove (struct ta_header*) ;
 int ta_free (void*) ;

void *ta_realloc_size(void *ta_parent, void *ptr, size_t size)
{
    if (size >= MAX_ALLOC)
        return ((void*)0);
    if (!size) {
        ta_free(ptr);
        return ((void*)0);
    }
    if (!ptr)
        return ta_alloc_size(ta_parent, size);
    struct ta_header *h = get_header(ptr);
    struct ta_header *old_h = h;
    if (h->size == size)
        return ptr;
    ta_dbg_remove(h);
    h = realloc(h, sizeof(union aligned_header) + size);
    ta_dbg_add(h ? h : old_h);
    if (!h)
        return ((void*)0);
    h->size = size;
    if (h != old_h) {
        if (h->next) {

            h->next->prev = h;
            h->prev->next = h;
        }
        if (h->ext) {

            h->ext->header = h;
            h->ext->children.next->prev = &h->ext->children;
            h->ext->children.prev->next = &h->ext->children;
        }
    }
    return PTR_FROM_HEADER(h);
}
