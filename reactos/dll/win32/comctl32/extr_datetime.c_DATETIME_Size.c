
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ left; void* bottom; void* top; void* right; } ;
struct TYPE_7__ {scalar_t__ right; scalar_t__ left; void* bottom; void* top; } ;
struct TYPE_6__ {void* right; void* left; void* bottom; void* top; } ;
struct TYPE_9__ {int dwStyle; int hwndSelf; TYPE_3__ rcDraw; TYPE_2__ checkbox; TYPE_1__ calbutton; TYPE_3__ rcClient; int hUpdown; } ;
typedef int LRESULT ;
typedef void* INT ;
typedef TYPE_4__ DATETIME_INFO ;


 int DTS_UPDOWN ;
 int FALSE ;
 int InvalidateRect (int ,int *,int ) ;
 int SWP_NOACTIVATE ;
 int SWP_NOZORDER ;
 int SetWindowPos (int ,int *,void*,int ,int,void*,int) ;
 int TRACE (char*,void*,void*) ;

__attribute__((used)) static LRESULT
DATETIME_Size (DATETIME_INFO *infoPtr, INT width, INT height)
{

    infoPtr->rcClient.bottom = height;
    infoPtr->rcClient.right = width;

    TRACE("Height=%d, Width=%d\n", infoPtr->rcClient.bottom, infoPtr->rcClient.right);

    infoPtr->rcDraw = infoPtr->rcClient;

    if (infoPtr->dwStyle & DTS_UPDOWN) {
        SetWindowPos(infoPtr->hUpdown, ((void*)0),
            infoPtr->rcClient.right-14, 0,
            15, infoPtr->rcClient.bottom - infoPtr->rcClient.top,
            SWP_NOACTIVATE | SWP_NOZORDER);
    }
    else {


        infoPtr->calbutton.top = infoPtr->rcDraw.top;
        infoPtr->calbutton.bottom= infoPtr->rcDraw.bottom;
        infoPtr->calbutton.left = infoPtr->rcDraw.right-15;
        infoPtr->calbutton.right = infoPtr->rcDraw.right;
    }



    infoPtr->checkbox.top = infoPtr->rcDraw.top;
    infoPtr->checkbox.bottom = infoPtr->rcDraw.bottom;
    infoPtr->checkbox.left = infoPtr->rcDraw.left;
    infoPtr->checkbox.right = infoPtr->rcDraw.left + 10;

    InvalidateRect(infoPtr->hwndSelf, ((void*)0), FALSE);

    return 0;
}
