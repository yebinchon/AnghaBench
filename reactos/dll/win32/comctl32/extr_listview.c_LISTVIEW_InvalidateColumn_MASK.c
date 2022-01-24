#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  top; } ;
struct TYPE_12__ {TYPE_1__ rcList; } ;
struct TYPE_11__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  top; } ;
typedef  TYPE_2__ RECT ;
typedef  TYPE_3__ LISTVIEW_INFO ;
typedef  int /*<<< orphan*/  INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__ const*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__ const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__ const*) ; 

__attribute__((used)) static inline void FUNC3(const LISTVIEW_INFO *infoPtr, INT nColumn)
{
    RECT rcCol;
    
    if(!FUNC2(infoPtr)) return; 
    FUNC0(infoPtr, nColumn, &rcCol);
    rcCol.top = infoPtr->rcList.top;
    rcCol.bottom = infoPtr->rcList.bottom;
    FUNC1(infoPtr, &rcCol);
}