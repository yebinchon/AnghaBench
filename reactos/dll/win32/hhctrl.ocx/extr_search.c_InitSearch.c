
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int pStorage; } ;
struct TYPE_9__ {TYPE_2__* root; int hwndList; } ;
struct TYPE_11__ {TYPE_1__ search; TYPE_4__* pCHMInfo; } ;
struct TYPE_10__ {int next; } ;
typedef TYPE_2__ SearchItem ;
typedef TYPE_3__ HHInfo ;
typedef TYPE_4__ CHMInfo ;


 int ReleaseSearch (TYPE_3__*) ;
 int SearchCHM_Storage (TYPE_2__*,int ,char const*) ;
 TYPE_2__* alloc_search_item (int *,int *) ;
 int fill_search_tree (int ,int ) ;

void InitSearch(HHInfo *info, const char *needle)
{
    CHMInfo *chm = info->pCHMInfo;
    SearchItem *root_item = alloc_search_item(((void*)0), ((void*)0));

    SearchCHM_Storage(root_item, chm->pStorage, needle);
    fill_search_tree(info->search.hwndList, root_item->next);
    if(info->search.root)
        ReleaseSearch(info);
    info->search.root = root_item;
}
