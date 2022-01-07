
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ta_header {size_t size; struct ta_header* next; TYPE_1__* ext; } ;
struct TYPE_2__ {struct ta_header children; } ;



__attribute__((used)) static size_t get_children_size(struct ta_header *h)
{
    size_t size = 0;
    if (h->ext) {
        struct ta_header *s;
        for (s = h->ext->children.next; s != &h->ext->children; s = s->next)
            size += s->size + get_children_size(s);
    }
    return size;
}
