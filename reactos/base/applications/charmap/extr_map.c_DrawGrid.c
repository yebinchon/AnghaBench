
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_11__ {int bottom; int right; int top; int left; } ;
struct TYPE_10__ {int hdc; int rcPaint; } ;
struct TYPE_9__ {TYPE_4__ CellExt; } ;
struct TYPE_8__ {TYPE_2__* pActiveCell; TYPE_2__** Cells; } ;
typedef int RECT ;
typedef TYPE_1__* PMAP ;
typedef TYPE_2__* PCELL ;
typedef TYPE_3__ PAINTSTRUCT ;
typedef size_t INT ;


 int DrawActiveCell (TYPE_1__*,int ) ;
 int IntersectRect (int *,int *,TYPE_4__*) ;
 int Rectangle (int ,int ,int ,int ,int ) ;
 size_t XCELLS ;
 size_t YCELLS ;

__attribute__((used)) static
VOID
DrawGrid(PMAP infoPtr,
         PAINTSTRUCT *ps)
{
    INT x, y;
    RECT rc;
    PCELL Cell;

    for (y = 0; y < YCELLS; y++)
    for (x = 0; x < XCELLS; x++)
    {
        Cell = &infoPtr->Cells[y][x];

        if (!IntersectRect(&rc,
                           &ps->rcPaint,
                           &Cell->CellExt))
        {
            continue;
        }

        Rectangle(ps->hdc,
                  Cell->CellExt.left,
                  Cell->CellExt.top,
                  Cell->CellExt.right,
                  Cell->CellExt.bottom);

        if (infoPtr->pActiveCell == Cell)
        {
            DrawActiveCell(infoPtr, ps->hdc);
        }
    }
}
