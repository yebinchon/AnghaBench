#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int CurVal; int MinVal; int MaxVal; } ;
typedef  TYPE_1__ UPDOWN_INFO ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC2(UPDOWN_INFO *infoPtr, BOOL *err)
{
    BOOL succ = FUNC0(infoPtr);
    int val = infoPtr->CurVal;

    if(!FUNC1(infoPtr, val)) {
        if((infoPtr->MinVal < infoPtr->MaxVal && val < infoPtr->MinVal)
                || (infoPtr->MinVal > infoPtr->MaxVal && val > infoPtr->MinVal))
            val = infoPtr->MinVal;
        else
            val = infoPtr->MaxVal;

        succ = FALSE;
    }

    if(err) *err = !succ;
    return val;
}