
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_7__ {TYPE_2__* pActiveCell; } ;
struct TYPE_5__ {int bottom; int right; int top; int left; } ;
struct TYPE_6__ {TYPE_1__ CellInt; } ;
typedef TYPE_3__* PMAP ;
typedef int HDC ;


 int Rectangle (int ,int ,int ,int ,int ) ;

__attribute__((used)) static
VOID
DrawActiveCell(PMAP infoPtr,
               HDC hdc)
{
    Rectangle(hdc,
              infoPtr->pActiveCell->CellInt.left,
              infoPtr->pActiveCell->CellInt.top,
              infoPtr->pActiveCell->CellInt.right,
              infoPtr->pActiveCell->CellInt.bottom);

}
