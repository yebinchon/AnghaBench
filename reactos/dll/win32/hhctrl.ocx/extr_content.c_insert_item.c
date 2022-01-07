
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int insert_type_t ;
struct TYPE_5__ {struct TYPE_5__* child; struct TYPE_5__* next; } ;
typedef TYPE_1__ ContentItem ;





__attribute__((used)) static ContentItem *insert_item(ContentItem *item, ContentItem *new_item, insert_type_t insert_type)
{
    if(!item)
        return new_item;

    if(!new_item)
        return item;

    switch(insert_type) {
    case 128:
        item->next = new_item;
        return new_item;
    case 129:
        if(item->child) {
            ContentItem *iter = item->child;
            while(iter->next)
                iter = iter->next;
            iter->next = new_item;
        }else {
            item->child = new_item;
        }
        return item;
    }

    return ((void*)0);
}
