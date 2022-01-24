#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WCHAR ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_8__ {int /*<<< orphan*/  hdc; int /*<<< orphan*/  rcPaint; } ;
struct TYPE_7__ {int /*<<< orphan*/  CellInt; scalar_t__ ch; int /*<<< orphan*/  CellExt; } ;
struct TYPE_6__ {size_t iYStart; TYPE_2__** Cells; scalar_t__* ValidGlyphs; int /*<<< orphan*/  hFont; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_1__* PMAP ;
typedef  TYPE_2__* PCELL ;
typedef  TYPE_3__ PAINTSTRUCT ;
typedef  size_t INT ;
typedef  int /*<<< orphan*/  HFONT ;

/* Variables and functions */
 int DT_CENTER ; 
 int DT_SINGLELINE ; 
 int DT_VCENTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t XCELLS ; 
 size_t YCELLS ; 

__attribute__((used)) static
VOID
FUNC3(PMAP infoPtr,
         PAINTSTRUCT *ps)
{
    HFONT hOldFont;
    WCHAR ch;
    INT x, y;
    RECT rc;
    PCELL Cell;
    INT i, added;

    hOldFont = FUNC2(ps->hdc,
                            infoPtr->hFont);

    i = XCELLS * infoPtr->iYStart;

    added = 0;

    for (y = 0; y < YCELLS; y++)
    for (x = 0; x < XCELLS; x++)
    {
        ch = (WCHAR)infoPtr->ValidGlyphs[i];

        Cell = &infoPtr->Cells[y][x];

        if (FUNC1(&rc,
                            &ps->rcPaint,
                            &Cell->CellExt))
        {
            Cell->ch = ch;

            FUNC0(ps->hdc,
                        &ch,
                        1,
                        &Cell->CellInt,
                        DT_CENTER | DT_VCENTER | DT_SINGLELINE);

            added++;
        }

        i++;
        ch = (WCHAR)i;
    }
    FUNC2(ps->hdc,
                 hOldFont);
}