
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int chm_index; int chm_file; } ;
struct TYPE_5__ {TYPE_1__ merge; int local; int name; struct TYPE_5__* child; struct TYPE_5__* next; } ;
typedef TYPE_2__ ContentItem ;


 int heap_free (int ) ;

__attribute__((used)) static void free_content_item(ContentItem *item)
{
    ContentItem *next;

    while(item) {
        next = item->next;

        free_content_item(item->child);

        heap_free(item->name);
        heap_free(item->local);
        heap_free(item->merge.chm_file);
        heap_free(item->merge.chm_index);

        item = next;
    }
}
