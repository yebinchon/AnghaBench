
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int insert_type_t ;
struct TYPE_15__ {int child; int merge; } ;
struct TYPE_12__ {int pszToc; } ;
struct TYPE_14__ {TYPE_4__* content; TYPE_2__* tabs; TYPE_10__* pCHMInfo; TYPE_1__ WinType; } ;
struct TYPE_13__ {int hwnd; } ;
struct TYPE_11__ {int szFile; } ;
typedef int IStream ;
typedef TYPE_3__ HHInfo ;
typedef int ContentItem ;


 int * GetChmStream (TYPE_10__*,int ,int *) ;
 int IStream_Release (int *) ;
 int SetChmPath (int *,int ,int ) ;
 size_t TAB_CONTENTS ;
 int TRACE (char*) ;
 int fill_content_tree (int ,int *,TYPE_4__*) ;
 TYPE_4__* heap_alloc_zero (int) ;
 int parse_hhc (TYPE_3__*,int *,TYPE_4__*,int *) ;
 int set_item_parents (int *,TYPE_4__*) ;

void InitContent(HHInfo *info)
{
    IStream *stream;
    insert_type_t insert_type;

    info->content = heap_alloc_zero(sizeof(ContentItem));
    SetChmPath(&info->content->merge, info->pCHMInfo->szFile, info->WinType.pszToc);

    stream = GetChmStream(info->pCHMInfo, info->pCHMInfo->szFile, &info->content->merge);
    if(!stream) {
        TRACE("Could not get content stream\n");
        return;
    }

    info->content->child = parse_hhc(info, stream, info->content, &insert_type);
    IStream_Release(stream);

    set_item_parents(((void*)0), info->content);
    fill_content_tree(info->tabs[TAB_CONTENTS].hwnd, ((void*)0), info->content);
}
