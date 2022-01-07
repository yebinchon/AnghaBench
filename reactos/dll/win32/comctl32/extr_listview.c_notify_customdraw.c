
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dwItemSpec; int hdr; int dwDrawStage; } ;
struct TYPE_5__ {TYPE_1__ nmcd; scalar_t__ iSubItem; } ;
typedef TYPE_2__ NMLVCUSTOMDRAW ;
typedef int LISTVIEW_INFO ;
typedef int DWORD ;
typedef int BOOL ;


 int CDDS_ITEM ;
 int CDDS_SUBITEM ;
 int NM_CUSTOMDRAW ;
 int notify_hdr (int const*,int ,int *) ;

__attribute__((used)) static inline DWORD notify_customdraw (const LISTVIEW_INFO *infoPtr, DWORD dwDrawStage, NMLVCUSTOMDRAW *lpnmlvcd)
{
    BOOL isForItem = (lpnmlvcd->nmcd.dwItemSpec != 0);
    DWORD result;

    lpnmlvcd->nmcd.dwDrawStage = dwDrawStage;
    if (isForItem) lpnmlvcd->nmcd.dwDrawStage |= CDDS_ITEM;
    if (lpnmlvcd->iSubItem) lpnmlvcd->nmcd.dwDrawStage |= CDDS_SUBITEM;
    if (isForItem) lpnmlvcd->nmcd.dwItemSpec--;
    result = notify_hdr(infoPtr, NM_CUSTOMDRAW, &lpnmlvcd->nmcd.hdr);
    if (isForItem) lpnmlvcd->nmcd.dwItemSpec++;
    return result;
}
