
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; struct TYPE_4__* child; struct TYPE_4__* parent; } ;
typedef TYPE_1__ ContentItem ;



__attribute__((used)) static void set_item_parents(ContentItem *parent, ContentItem *item)
{
    while(item) {
        item->parent = parent;
        set_item_parents(item, item->child);
        item = item->next;
    }
}
