#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  nItem; } ;
struct TYPE_10__ {int /*<<< orphan*/  rcList; } ;
typedef  TYPE_1__ LISTVIEW_INFO ;
typedef  TYPE_2__ ITERATOR ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LVIS_SELECTED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(const LISTVIEW_INFO *infoPtr)
{
    ITERATOR i; 
   
    FUNC3(&i, infoPtr, &infoPtr->rcList); 
    while(FUNC4(&i))
    {
	if (FUNC0(infoPtr, i.nItem, LVIS_SELECTED))
	    FUNC1(infoPtr, i.nItem);
    }
    FUNC2(&i);
}