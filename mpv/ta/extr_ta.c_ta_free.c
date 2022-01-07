
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ta_header {struct ta_header* ext; TYPE_2__* next; TYPE_1__* prev; int (* destructor ) (void*) ;} ;
struct TYPE_4__ {TYPE_1__* prev; } ;
struct TYPE_3__ {TYPE_2__* next; } ;


 int free (struct ta_header*) ;
 struct ta_header* get_header (void*) ;
 int stub1 (void*) ;
 int ta_dbg_remove (struct ta_header*) ;
 int ta_free_children (void*) ;

void ta_free(void *ptr)
{
    struct ta_header *h = get_header(ptr);
    if (!h)
        return;
    if (h->ext && h->ext->destructor)
        h->ext->destructor(ptr);
    ta_free_children(ptr);
    if (h->next) {

        h->next->prev = h->prev;
        h->prev->next = h->next;
    }
    ta_dbg_remove(h);
    free(h->ext);
    free(h);
}
