
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dwStyle; } ;
struct TYPE_5__ {int right; int left; int bottom; int top; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ REBAR_INFO ;


 int CCS_VERT ;

__attribute__((used)) static int get_rect_cy(const REBAR_INFO *infoPtr, const RECT *lpRect)
{
    if (infoPtr->dwStyle & CCS_VERT)
        return lpRect->right - lpRect->left;
    return lpRect->bottom - lpRect->top;
}
