
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_9__ {int hLrgWnd; int hParent; int hMapWnd; TYPE_1__* pActiveCell; } ;
struct TYPE_8__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_7__ {int CellExt; } ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__* PMAP ;


 int CopyRect (TYPE_2__*,int *) ;
 int InflateRect (TYPE_2__*,scalar_t__,scalar_t__) ;
 int InvalidateRect (int ,int *,int ) ;
 int MapWindowPoints (int ,int ,int *,int) ;
 int MoveWindow (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int TRUE ;
 scalar_t__ XCELLS ;
 scalar_t__ XLARGE ;
 scalar_t__ YCELLS ;
 scalar_t__ YLARGE ;

__attribute__((used)) static
VOID
MoveLargeCell(PMAP infoPtr)
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

    MoveWindow(infoPtr->hLrgWnd,
               rLarge.left,
               rLarge.top,
               rLarge.right - rLarge.left,
               rLarge.bottom - rLarge.top,
               TRUE);

    InvalidateRect(infoPtr->hLrgWnd,
                   ((void*)0),
                   TRUE);
}
