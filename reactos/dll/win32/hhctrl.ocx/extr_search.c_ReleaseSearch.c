
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* root; } ;
struct TYPE_7__ {TYPE_1__ search; } ;
struct TYPE_6__ {struct TYPE_6__* next; int filename; } ;
typedef TYPE_2__ SearchItem ;
typedef TYPE_3__ HHInfo ;


 int heap_free (int ) ;

void ReleaseSearch(HHInfo *info)
{
    SearchItem *item = info->search.root;

    info->search.root = ((void*)0);
    while(item) {
        heap_free(item->filename);
        item = item->next;
    }
}
