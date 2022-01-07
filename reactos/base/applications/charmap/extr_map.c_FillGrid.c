
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ WCHAR ;
typedef int VOID ;
struct TYPE_8__ {int hdc; int rcPaint; } ;
struct TYPE_7__ {int CellInt; scalar_t__ ch; int CellExt; } ;
struct TYPE_6__ {size_t iYStart; TYPE_2__** Cells; scalar_t__* ValidGlyphs; int hFont; } ;
typedef int RECT ;
typedef TYPE_1__* PMAP ;
typedef TYPE_2__* PCELL ;
typedef TYPE_3__ PAINTSTRUCT ;
typedef size_t INT ;
typedef int HFONT ;


 int DT_CENTER ;
 int DT_SINGLELINE ;
 int DT_VCENTER ;
 int DrawTextW (int ,scalar_t__*,int,int *,int) ;
 scalar_t__ IntersectRect (int *,int *,int *) ;
 int SelectObject (int ,int ) ;
 size_t XCELLS ;
 size_t YCELLS ;

__attribute__((used)) static
VOID
FillGrid(PMAP infoPtr,
         PAINTSTRUCT *ps)
{
    HFONT hOldFont;
    WCHAR ch;
    INT x, y;
    RECT rc;
    PCELL Cell;
    INT i, added;

    hOldFont = SelectObject(ps->hdc,
                            infoPtr->hFont);

    i = XCELLS * infoPtr->iYStart;

    added = 0;

    for (y = 0; y < YCELLS; y++)
    for (x = 0; x < XCELLS; x++)
    {
        ch = (WCHAR)infoPtr->ValidGlyphs[i];

        Cell = &infoPtr->Cells[y][x];

        if (IntersectRect(&rc,
                            &ps->rcPaint,
                            &Cell->CellExt))
        {
            Cell->ch = ch;

            DrawTextW(ps->hdc,
                        &ch,
                        1,
                        &Cell->CellInt,
                        DT_CENTER | DT_VCENTER | DT_SINGLELINE);

            added++;
        }

        i++;
        ch = (WCHAR)i;
    }
    SelectObject(ps->hdc,
                 hOldFont);
}
