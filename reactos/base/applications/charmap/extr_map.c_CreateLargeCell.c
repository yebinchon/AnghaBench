
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_10__ {int hLrgWnd; int hParent; int hMapWnd; TYPE_1__* pActiveCell; } ;
struct TYPE_9__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_8__ {int CellExt; } ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__* PMAP ;
typedef int BOOL ;


 int CopyRect (TYPE_2__*,int *) ;
 int CreateWindowExW (int ,int ,int *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int *,int ,TYPE_3__*) ;
 int FALSE ;
 int InflateRect (TYPE_2__*,scalar_t__,scalar_t__) ;
 int MapWindowPoints (int ,int ,int *,int) ;
 int TRUE ;
 int WS_CHILDWINDOW ;
 int WS_VISIBLE ;
 scalar_t__ XCELLS ;
 scalar_t__ XLARGE ;
 scalar_t__ YCELLS ;
 scalar_t__ YLARGE ;
 int hInstance ;
 int szLrgCellWndClass ;

__attribute__((used)) static
BOOL
CreateLargeCell(PMAP infoPtr)
{
    RECT rLarge;

    CopyRect(&rLarge,
             &infoPtr->pActiveCell->CellExt);

    MapWindowPoints(infoPtr->hMapWnd,
                    infoPtr->hParent,
                    (VOID*)&rLarge,
                    2);

    InflateRect(&rLarge,
                XLARGE - XCELLS,
                YLARGE - YCELLS);

    infoPtr->hLrgWnd = CreateWindowExW(0,
                                       szLrgCellWndClass,
                                       ((void*)0),
                                       WS_CHILDWINDOW | WS_VISIBLE,
                                       rLarge.left,
                                       rLarge.top,
                                       rLarge.right - rLarge.left,
                                       rLarge.bottom - rLarge.top,
                                       infoPtr->hParent,
                                       ((void*)0),
                                       hInstance,
                                       infoPtr);
    if (!infoPtr->hLrgWnd)
        return FALSE;

    return TRUE;
}
