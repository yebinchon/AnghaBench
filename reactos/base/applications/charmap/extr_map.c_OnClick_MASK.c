#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* WORD ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_10__ {TYPE_1__* pActiveCell; int /*<<< orphan*/ * hLrgWnd; TYPE_1__** Cells; int /*<<< orphan*/  hMapWnd; } ;
struct TYPE_9__ {void* y; void* x; } ;
struct TYPE_8__ {void* bLarge; void* bActive; int /*<<< orphan*/  CellInt; } ;
typedef  TYPE_2__ POINT ;
typedef  TYPE_3__* PMAP ;
typedef  size_t INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_2__) ; 
 void* TRUE ; 
 size_t XCELLS ; 
 size_t YCELLS ; 

__attribute__((used)) static
VOID
FUNC5(PMAP infoPtr,
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
        if (FUNC4(&infoPtr->Cells[y][x].CellInt,
                     pt))
        {
            /* if the cell is not already active */
            if (!infoPtr->Cells[y][x].bActive)
            {
                /* set previous active cell to inactive */
                if (infoPtr->pActiveCell)
                {
                    /* invalidate normal cells, required when
                     * moving a small active cell via keyboard */
                    if (!infoPtr->pActiveCell->bLarge)
                    {
                        FUNC2(infoPtr->hMapWnd,
                                       &infoPtr->pActiveCell->CellInt,
                                       TRUE);
                    }

                    infoPtr->pActiveCell->bActive = FALSE;
                    infoPtr->pActiveCell->bLarge = FALSE;
                }

                /* set new cell to active */
                infoPtr->pActiveCell = &infoPtr->Cells[y][x];
                infoPtr->pActiveCell->bActive = TRUE;
                infoPtr->pActiveCell->bLarge = TRUE;
                if (infoPtr->hLrgWnd)
                    FUNC3(infoPtr);
                else
                    FUNC0(infoPtr);
            }
            else
            {
                /* flick between large and small */
                if (infoPtr->pActiveCell->bLarge)
                {
                    FUNC1(infoPtr->hLrgWnd);
                    infoPtr->hLrgWnd = NULL;
                }
                else
                {
                    FUNC0(infoPtr);
                }

                infoPtr->pActiveCell->bLarge = (infoPtr->pActiveCell->bLarge) ? FALSE : TRUE;
            }

            break;
        }
    }
}