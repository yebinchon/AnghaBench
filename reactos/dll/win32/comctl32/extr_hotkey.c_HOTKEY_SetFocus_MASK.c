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
struct TYPE_3__ {int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  CaretPos; int /*<<< orphan*/  nHeight; int /*<<< orphan*/  bFocus; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_1__ HOTKEY_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_CYBORDER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static LRESULT
FUNC4 (HOTKEY_INFO *infoPtr)
{
    infoPtr->bFocus = TRUE;

    FUNC0 (infoPtr->hwndSelf, NULL, 1, infoPtr->nHeight);
    FUNC2 (infoPtr->CaretPos, FUNC1(SM_CYBORDER));
    FUNC3 (infoPtr->hwndSelf);

    return 0;
}