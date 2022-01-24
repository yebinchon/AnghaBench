#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int TLbtnState; int BRbtnState; int /*<<< orphan*/  hwndSelf; } ;
typedef  TYPE_1__ PAGER_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PGF_DEPRESSED ; 
 int PGF_HOT ; 
 void* PGF_NORMAL ; 
 int /*<<< orphan*/  TIMERID1 ; 
 int /*<<< orphan*/  TIMERID2 ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT
FUNC2 (PAGER_INFO* infoPtr, INT keys, INT x, INT y)
{
    FUNC1("[%p]\n", infoPtr->hwndSelf);

    FUNC0 (infoPtr->hwndSelf, TIMERID1);
    FUNC0 (infoPtr->hwndSelf, TIMERID2);

    /* make PRESSED btns NORMAL but don't hide gray btns */
    if (infoPtr->TLbtnState & (PGF_HOT | PGF_DEPRESSED))
        infoPtr->TLbtnState = PGF_NORMAL;
    if (infoPtr->BRbtnState & (PGF_HOT | PGF_DEPRESSED))
        infoPtr->BRbtnState = PGF_NORMAL;

    return 0;
}