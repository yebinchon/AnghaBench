
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int right; scalar_t__ bottom; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_9__ {int cx; scalar_t__ cy; } ;
struct TYPE_8__ {int Self; int Font; } ;
typedef TYPE_1__ SYSLINK_INFO ;
typedef TYPE_2__ SIZE ;
typedef TYPE_3__ RECT ;
typedef scalar_t__ LONG ;
typedef int HGDIOBJ ;
typedef int * HDC ;


 int * GetDC (int ) ;
 int ReleaseDC (int ,int *) ;
 int SYSLINK_Render (TYPE_1__ const*,int *,TYPE_3__*) ;
 int SelectObject (int *,int ) ;

__attribute__((used)) static LONG SYSLINK_GetIdealSize (const SYSLINK_INFO *infoPtr, int cxMaxWidth, SIZE *lpSize)
{
    RECT rc;
    HDC hdc;

    rc.left = rc.top = rc.bottom = 0;
    rc.right = cxMaxWidth;

    hdc = GetDC(infoPtr->Self);
    if (hdc != ((void*)0))
    {
        HGDIOBJ hOldFont = SelectObject(hdc, infoPtr->Font);

        SYSLINK_Render(infoPtr, hdc, &rc);

        SelectObject(hdc, hOldFont);
        ReleaseDC(infoPtr->Self, hdc);

        lpSize->cx = rc.right;
        lpSize->cy = rc.bottom;
    }

    return rc.bottom;
}
