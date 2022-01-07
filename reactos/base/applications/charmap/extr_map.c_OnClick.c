
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* WORD ;
typedef int VOID ;
struct TYPE_10__ {TYPE_1__* pActiveCell; int * hLrgWnd; TYPE_1__** Cells; int hMapWnd; } ;
struct TYPE_9__ {void* y; void* x; } ;
struct TYPE_8__ {void* bLarge; void* bActive; int CellInt; } ;
typedef TYPE_2__ POINT ;
typedef TYPE_3__* PMAP ;
typedef size_t INT ;


 int CreateLargeCell (TYPE_3__*) ;
 int DestroyWindow (int *) ;
 void* FALSE ;
 int InvalidateRect (int ,int *,void*) ;
 int MoveLargeCell (TYPE_3__*) ;
 scalar_t__ PtInRect (int *,TYPE_2__) ;
 void* TRUE ;
 size_t XCELLS ;
 size_t YCELLS ;

__attribute__((used)) static
VOID
OnClick(PMAP infoPtr,
        WORD ptx,
        WORD pty)
{
    POINT pt;
    INT x, y;

    pt.x = ptx;
    pt.y = pty;

    for (x = 0; x < XCELLS; x++)
    for (y = 0; y < YCELLS; y++)
    {
        if (PtInRect(&infoPtr->Cells[y][x].CellInt,
                     pt))
        {

            if (!infoPtr->Cells[y][x].bActive)
            {

                if (infoPtr->pActiveCell)
                {


                    if (!infoPtr->pActiveCell->bLarge)
                    {
                        InvalidateRect(infoPtr->hMapWnd,
                                       &infoPtr->pActiveCell->CellInt,
                                       TRUE);
                    }

                    infoPtr->pActiveCell->bActive = FALSE;
                    infoPtr->pActiveCell->bLarge = FALSE;
                }


                infoPtr->pActiveCell = &infoPtr->Cells[y][x];
                infoPtr->pActiveCell->bActive = TRUE;
                infoPtr->pActiveCell->bLarge = TRUE;
                if (infoPtr->hLrgWnd)
                    MoveLargeCell(infoPtr);
                else
                    CreateLargeCell(infoPtr);
            }
            else
            {

                if (infoPtr->pActiveCell->bLarge)
                {
                    DestroyWindow(infoPtr->hLrgWnd);
                    infoPtr->hLrgWnd = ((void*)0);
                }
                else
                {
                    CreateLargeCell(infoPtr);
                }

                infoPtr->pActiveCell->bLarge = (infoPtr->pActiveCell->bLarge) ? FALSE : TRUE;
            }

            break;
        }
    }
}
