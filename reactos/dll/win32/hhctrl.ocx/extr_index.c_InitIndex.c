
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int szFile; } ;
struct TYPE_12__ {int next; int merge; scalar_t__ nItems; } ;
struct TYPE_9__ {int pszIndex; } ;
struct TYPE_11__ {TYPE_5__* index; TYPE_2__* tabs; TYPE_8__* pCHMInfo; TYPE_1__ WinType; } ;
struct TYPE_10__ {int hwnd; } ;
typedef int IndexItem ;
typedef int IStream ;
typedef TYPE_3__ HHInfo ;


 int * GetChmStream (TYPE_8__*,int ,int *) ;
 int IStream_Release (int *) ;
 int SetChmPath (int *,int ,int ) ;
 size_t TAB_INDEX ;
 int TRACE (char*) ;
 int fill_index_tree (int ,int ) ;
 TYPE_5__* heap_alloc_zero (int) ;
 int parse_hhindex (TYPE_3__*,int *,TYPE_5__*) ;

void InitIndex(HHInfo *info)
{
    IStream *stream;

    info->index = heap_alloc_zero(sizeof(IndexItem));
    info->index->nItems = 0;
    SetChmPath(&info->index->merge, info->pCHMInfo->szFile, info->WinType.pszIndex);

    stream = GetChmStream(info->pCHMInfo, info->pCHMInfo->szFile, &info->index->merge);
    if(!stream) {
        TRACE("Could not get index stream\n");
        return;
    }

    parse_hhindex(info, stream, info->index);
    IStream_Release(stream);

    fill_index_tree(info->tabs[TAB_INDEX].hwnd, info->index->next);
}
