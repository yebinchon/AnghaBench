
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwStyle; int uView; } ;
typedef TYPE_1__ LISTVIEW_INFO ;






 int LVS_TYPEMASK ;
 int LV_VIEW_DETAILS ;
 int LV_VIEW_ICON ;
 int LV_VIEW_LIST ;
 int LV_VIEW_SMALLICON ;

__attribute__((used)) static inline void map_style_view(LISTVIEW_INFO *infoPtr)
{
    switch (infoPtr->dwStyle & LVS_TYPEMASK)
    {
    case 131:
        infoPtr->uView = LV_VIEW_ICON;
        break;
    case 129:
        infoPtr->uView = LV_VIEW_DETAILS;
        break;
    case 128:
        infoPtr->uView = LV_VIEW_SMALLICON;
        break;
    case 130:
        infoPtr->uView = LV_VIEW_LIST;
    }
}
