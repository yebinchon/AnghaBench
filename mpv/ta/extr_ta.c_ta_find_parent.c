
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ta_header {scalar_t__ size; TYPE_1__* ext; struct ta_header* next; } ;
struct TYPE_2__ {int header; } ;


 scalar_t__ CHILDREN_SENTINEL ;
 void* PTR_FROM_HEADER (int ) ;
 struct ta_header* get_header (void*) ;

void *ta_find_parent(void *ptr)
{
    struct ta_header *h = get_header(ptr);
    if (!h || !h->next)
        return ((void*)0);
    for (struct ta_header *cur = h->next; cur != h; cur = cur->next) {
        if (cur->size == CHILDREN_SENTINEL)
            return PTR_FROM_HEADER(cur->ext->header);
    }
    return ((void*)0);
}
