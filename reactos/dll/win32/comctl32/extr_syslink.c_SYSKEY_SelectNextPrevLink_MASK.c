#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ HasFocus; } ;
typedef  TYPE_1__ SYSLINK_INFO ;
typedef  int /*<<< orphan*/ * PDOC_ITEM ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__ const*,int*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 

__attribute__((used)) static BOOL FUNC5 (const SYSLINK_INFO *infoPtr, BOOL Prev)
{
    if(infoPtr->HasFocus)
    {
        PDOC_ITEM Focus;
        int id;

        Focus = FUNC0(infoPtr, &id);
        if(Focus != NULL)
        {
            PDOC_ITEM NewFocus, OldFocus;

            if(Prev)
                NewFocus = FUNC2(infoPtr, Focus);
            else
                NewFocus = FUNC1(infoPtr, Focus);

            if(NewFocus != NULL)
            {
                OldFocus = FUNC4(infoPtr, NewFocus);

                if(OldFocus && OldFocus != NewFocus)
                {
                    FUNC3(infoPtr, OldFocus);
                }
                FUNC3(infoPtr, NewFocus);
                return TRUE;
            }
        }
    }
    return FALSE;
}