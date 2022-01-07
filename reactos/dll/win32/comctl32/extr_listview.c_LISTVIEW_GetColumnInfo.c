
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int rcHeader; } ;
struct TYPE_6__ {int hdpaColumns; scalar_t__ colRectsDirty; int hwndHeader; } ;
typedef int LPARAM ;
typedef TYPE_1__ LISTVIEW_INFO ;
typedef scalar_t__ INT ;
typedef TYPE_2__ COLUMN_INFO ;


 TYPE_2__* DPA_GetPtr (int ,scalar_t__) ;
 scalar_t__ DPA_GetPtrCount (int ) ;
 scalar_t__ FALSE ;
 int HDM_GETITEMRECT ;
 int SendMessageW (int ,int ,scalar_t__,int ) ;
 int assert (int) ;

__attribute__((used)) static inline COLUMN_INFO * LISTVIEW_GetColumnInfo(const LISTVIEW_INFO *infoPtr, INT nSubItem)
{
    static COLUMN_INFO mainItem;

    if (nSubItem == 0 && DPA_GetPtrCount(infoPtr->hdpaColumns) == 0) return &mainItem;
    assert (nSubItem >= 0 && nSubItem < DPA_GetPtrCount(infoPtr->hdpaColumns));


    if (infoPtr->colRectsDirty)
    {
        COLUMN_INFO *info;
        LISTVIEW_INFO *Ptr = (LISTVIEW_INFO*)infoPtr;
        INT i;

        for (i = 0; i < DPA_GetPtrCount(infoPtr->hdpaColumns); i++) {
            info = DPA_GetPtr(infoPtr->hdpaColumns, i);
            SendMessageW(infoPtr->hwndHeader, HDM_GETITEMRECT, i, (LPARAM)&info->rcHeader);
        }
        Ptr->colRectsDirty = FALSE;
    }

    return DPA_GetPtr(infoPtr->hdpaColumns, nSubItem);
}
