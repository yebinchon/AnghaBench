
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ uView; int dwLvExStyle; int dwStyle; } ;
typedef TYPE_1__ LISTVIEW_INFO ;
typedef int BOOL ;


 int LVS_EX_HEADERINALLVIEWS ;
 int LVS_NOCOLUMNHEADER ;
 scalar_t__ LV_VIEW_DETAILS ;

__attribute__((used)) static inline BOOL LISTVIEW_IsHeaderEnabled(const LISTVIEW_INFO *infoPtr)
{
    return (infoPtr->uView == LV_VIEW_DETAILS ||
            infoPtr->dwLvExStyle & LVS_EX_HEADERINALLVIEWS) &&
          !(infoPtr->dwStyle & LVS_NOCOLUMNHEADER);
}
