
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ta_header {struct ta_ext_header* ext; } ;
struct TYPE_2__ {struct TYPE_2__* prev; } ;
struct ta_ext_header {TYPE_1__ children; } ;


 int PTR_FROM_HEADER (TYPE_1__*) ;
 struct ta_header* get_header (void*) ;
 int ta_free (int ) ;

void ta_free_children(void *ptr)
{
    struct ta_header *h = get_header(ptr);
    struct ta_ext_header *eh = h ? h->ext : ((void*)0);
    if (!eh)
        return;
    while (eh->children.prev != &eh->children)
        ta_free(PTR_FROM_HEADER(eh->children.prev));
}
