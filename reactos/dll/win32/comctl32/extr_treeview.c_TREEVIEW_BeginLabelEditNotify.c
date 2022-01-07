
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int pszText; } ;
struct TYPE_8__ {TYPE_4__ item; int hdr; } ;
struct TYPE_7__ {int bNtfUnicode; } ;
typedef int TREEVIEW_ITEM ;
typedef TYPE_1__ TREEVIEW_INFO ;
typedef TYPE_2__ NMTVDISPINFOW ;
typedef int BOOL ;


 int TREEVIEW_SendRealNotify (TYPE_1__ const*,int ,int *) ;
 int TREEVIEW_TVItemFromItem (TYPE_1__ const*,int,TYPE_4__*,int *) ;
 int TVIF_HANDLE ;
 int TVIF_PARAM ;
 int TVIF_STATE ;
 int TVIF_TEXT ;
 int TVN_BEGINLABELEDITW ;
 int heap_free (int ) ;

__attribute__((used)) static BOOL
TREEVIEW_BeginLabelEditNotify(const TREEVIEW_INFO *infoPtr, TREEVIEW_ITEM *editItem)
{
    NMTVDISPINFOW tvdi;
    BOOL ret;

    TREEVIEW_TVItemFromItem(infoPtr, TVIF_HANDLE | TVIF_STATE | TVIF_PARAM | TVIF_TEXT,
                            &tvdi.item, editItem);

    ret = TREEVIEW_SendRealNotify(infoPtr, TVN_BEGINLABELEDITW, &tvdi.hdr);

    if (!infoPtr->bNtfUnicode)
        heap_free(tvdi.item.pszText);

    return ret;
}
