
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int dwStyle; int Buddy; int Self; } ;
typedef TYPE_1__ UPDOWN_INFO ;
struct TYPE_9__ {int left; int right; int bottom; int top; } ;
typedef TYPE_2__ RECT ;
typedef scalar_t__ HTHEME ;


 int DEFAULT_BUDDYBORDER ;
 int DEFAULT_BUDDYBORDER_THEMED ;
 int DEFAULT_BUDDYSPACER ;
 int DEFAULT_BUDDYSPACER_THEMED ;
 int FLAG_DECR ;
 int FLAG_INCR ;
 int GetClientRect (int ,TYPE_2__*) ;
 scalar_t__ GetWindowTheme (int ) ;
 int InflateRect (TYPE_2__*,int ,int const) ;
 scalar_t__ IsWindow (int ) ;
 int UDS_ALIGNLEFT ;
 int UDS_ALIGNRIGHT ;
 int UDS_HORZ ;
 scalar_t__ UPDOWN_HasBuddyBorder (TYPE_1__ const*) ;

__attribute__((used)) static void UPDOWN_GetArrowRect (const UPDOWN_INFO* infoPtr, RECT *rect, int arrow)
{
    HTHEME theme = GetWindowTheme (infoPtr->Self);
    const int border = theme ? DEFAULT_BUDDYBORDER_THEMED : DEFAULT_BUDDYBORDER;
    const int spacer = theme ? DEFAULT_BUDDYSPACER_THEMED : DEFAULT_BUDDYSPACER;
    GetClientRect (infoPtr->Self, rect);





    if (UPDOWN_HasBuddyBorder(infoPtr)) {
        if (infoPtr->dwStyle & UDS_ALIGNLEFT)
            rect->left += border;
        else
            rect->right -= border;

        InflateRect(rect, 0, -border);
    }


    if (IsWindow(infoPtr->Buddy) ) {
 if (infoPtr->dwStyle & UDS_ALIGNLEFT) rect->right -= spacer;
 else if (infoPtr->dwStyle & UDS_ALIGNRIGHT) rect->left += spacer;
    }






    if (infoPtr->dwStyle & UDS_HORZ) {
        int len = rect->right - rect->left + 1;
        if (arrow & FLAG_INCR)
            rect->left = rect->left + len/2;
        if (arrow & FLAG_DECR)
            rect->right = rect->left + len/2 - (theme ? 0 : 1);
    } else {
        int len = rect->bottom - rect->top + 1;
        if (arrow & FLAG_INCR)
            rect->bottom = rect->top + len/2 - (theme ? 0 : 1);
        if (arrow & FLAG_DECR)
            rect->top = rect->top + len/2;
    }
}
