
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwStyle; scalar_t__ uView; } ;
typedef TYPE_1__ LISTVIEW_INFO ;
typedef int BOOL ;


 int LVS_AUTOARRANGE ;
 scalar_t__ LV_VIEW_ICON ;
 scalar_t__ LV_VIEW_SMALLICON ;

__attribute__((used)) static inline BOOL is_autoarrange(const LISTVIEW_INFO *infoPtr)
{
    return (infoPtr->dwStyle & LVS_AUTOARRANGE) &&
        (infoPtr->uView == LV_VIEW_ICON || infoPtr->uView == LV_VIEW_SMALLICON);
}
