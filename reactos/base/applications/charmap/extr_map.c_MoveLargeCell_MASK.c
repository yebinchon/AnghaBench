#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_9__ {int /*<<< orphan*/  hLrgWnd; int /*<<< orphan*/  hParent; int /*<<< orphan*/  hMapWnd; TYPE_1__* pActiveCell; } ;
struct TYPE_8__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_7__ {int /*<<< orphan*/  CellExt; } ;
typedef  TYPE_2__ RECT ;
typedef  TYPE_3__* PMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ XCELLS ; 
 scalar_t__ XLARGE ; 
 scalar_t__ YCELLS ; 
 scalar_t__ YLARGE ; 

__attribute__((used)) static
VOID
FUNC5(PMAP infoPtr)
{
    RECT rLarge;

    FUNC0(&rLarge,
             &infoPtr->pActiveCell->CellExt);

    FUNC3(infoPtr->hMapWnd,
                    infoPtr->hParent,
                    (VOID*)&rLarge,
                    2);

    FUNC1(&rLarge,
                XLARGE - XCELLS,
                YLARGE - YCELLS);

    FUNC4(infoPtr->hLrgWnd,
               rLarge.left,
               rLarge.top,
               rLarge.right - rLarge.left,
               rLarge.bottom - rLarge.top,
               TRUE);

    FUNC2(infoPtr->hLrgWnd,
                   NULL,
                   TRUE);
}