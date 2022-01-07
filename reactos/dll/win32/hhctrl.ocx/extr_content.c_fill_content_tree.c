
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* child; scalar_t__ name; } ;
typedef int HWND ;
typedef TYPE_1__ ContentItem ;


 int insert_content_item (int ,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void fill_content_tree(HWND hwnd, ContentItem *parent, ContentItem *item)
{
    while(item) {
        if(item->name) {
            insert_content_item(hwnd, parent, item);
            fill_content_tree(hwnd, item, item->child);
        }else {
            fill_content_tree(hwnd, parent, item->child);
        }
        item = item->next;
    }
}
