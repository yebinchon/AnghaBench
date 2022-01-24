#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ uView; int /*<<< orphan*/  nItemHeight; } ;
struct TYPE_16__ {scalar_t__ y; int /*<<< orphan*/  x; } ;
struct TYPE_15__ {int /*<<< orphan*/  bottom; scalar_t__ top; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ POINT ;
typedef  TYPE_3__ LISTVIEW_INFO ;
typedef  int /*<<< orphan*/  INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__ const*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__ const*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__ const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__ const*,TYPE_1__*) ; 
 scalar_t__ LV_VIEW_DETAILS ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__ const*) ; 

__attribute__((used)) static inline void FUNC7(const LISTVIEW_INFO *infoPtr, INT nItem, INT nSubItem)
{
    POINT Origin, Position;
    RECT rcBox;
    
    if(!FUNC6(infoPtr)) return; 
    FUNC5 (infoPtr->uView == LV_VIEW_DETAILS);
    FUNC2(infoPtr, &Origin);
    FUNC1(infoPtr, nItem, &Position);
    FUNC0(infoPtr, nSubItem, &rcBox);
    rcBox.top = 0;
    rcBox.bottom = infoPtr->nItemHeight;
    FUNC4(&rcBox, Origin.x, Origin.y + Position.y);
    FUNC3(infoPtr, &rcBox);
}