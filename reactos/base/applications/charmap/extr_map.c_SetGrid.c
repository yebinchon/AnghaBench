
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_9__ {size_t left; size_t top; size_t right; size_t bottom; } ;
struct TYPE_6__ {size_t cx; size_t cy; } ;
struct TYPE_8__ {TYPE_2__** Cells; TYPE_1__ CellSize; } ;
struct TYPE_7__ {int CellInt; TYPE_5__ CellExt; } ;
typedef TYPE_3__* PMAP ;
typedef size_t INT ;


 int CopyRect (int *,TYPE_5__*) ;
 int InflateRect (int *,int,int) ;
 size_t XCELLS ;
 size_t YCELLS ;

__attribute__((used)) static
VOID
SetGrid(PMAP infoPtr)
{
    INT x, y;

    for (y = 0; y < YCELLS; y++)
    for (x = 0; x < XCELLS; x++)
    {
        infoPtr->Cells[y][x].CellExt.left = x * infoPtr->CellSize.cx + 1;
        infoPtr->Cells[y][x].CellExt.top = y * infoPtr->CellSize.cy + 1;
        infoPtr->Cells[y][x].CellExt.right = (x + 1) * infoPtr->CellSize.cx + 2;
        infoPtr->Cells[y][x].CellExt.bottom = (y + 1) * infoPtr->CellSize.cy + 2;

        CopyRect(&infoPtr->Cells[y][x].CellInt,
                 &infoPtr->Cells[y][x].CellExt);

        InflateRect(&infoPtr->Cells[y][x].CellInt,
                    -1,
                    -1);
    }
}
