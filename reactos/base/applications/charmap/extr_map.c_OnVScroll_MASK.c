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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_8__ {int cy; } ;
struct TYPE_10__ {int iYStart; int /*<<< orphan*/ * hLrgWnd; int /*<<< orphan*/  hMapWnd; TYPE_1__ CellSize; int /*<<< orphan*/  NumRows; } ;
struct TYPE_9__ {int top; int bottom; } ;
typedef  TYPE_2__ RECT ;
typedef  TYPE_3__* PMAP ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  SB_LINEDOWN 132 
#define  SB_LINEUP 131 
#define  SB_PAGEDOWN 130 
#define  SB_PAGEUP 129 
#define  SB_THUMBTRACK 128 
 int /*<<< orphan*/  SB_VERT ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  SW_INVALIDATE ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ YCELLS ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
VOID
FUNC8(PMAP infoPtr,
          INT Value,
          INT Pos)
{
    INT iYDiff, iOldYStart = infoPtr->iYStart;

    switch (Value)
    {
        case SB_LINEUP:
            infoPtr->iYStart -=  1;
            break;

        case SB_LINEDOWN:
            infoPtr->iYStart +=  1;
            break;

        case SB_PAGEUP:
            infoPtr->iYStart -= YCELLS;
            break;

        case SB_PAGEDOWN:
            infoPtr->iYStart += YCELLS;
            break;

        case SB_THUMBTRACK:
            infoPtr->iYStart = Pos;
            break;

       default:
            break;
       }

    infoPtr->iYStart = FUNC6(0, infoPtr->iYStart);
    infoPtr->iYStart = FUNC7(infoPtr->iYStart, infoPtr->NumRows);

    iYDiff = iOldYStart - infoPtr->iYStart;
    if (iYDiff)
    {
        if (infoPtr->hLrgWnd != NULL)
        {
            FUNC4(infoPtr->hLrgWnd, SW_HIDE);
        }

        FUNC3(infoPtr->hMapWnd,
                     SB_VERT,
                     infoPtr->iYStart,
                     TRUE);

        if (FUNC5(iYDiff) < YCELLS)
        {
            RECT rect;
            FUNC0(infoPtr->hMapWnd, &rect);
            rect.top += 2;
            rect.bottom -= 2;
            FUNC2(infoPtr->hMapWnd,
                           0,
                           iYDiff * infoPtr->CellSize.cy,
                           &rect,
                           &rect,
                           NULL,
                           NULL,
                           SW_INVALIDATE);
        }
        else
        {
            FUNC1(infoPtr->hMapWnd,
                           NULL,
                           TRUE);
        }

        if (infoPtr->hLrgWnd != NULL)
        {
            FUNC4(infoPtr->hLrgWnd, SW_SHOW);
        }
    }
}