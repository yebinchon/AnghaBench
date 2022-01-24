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
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_3__ {int dateValid; int /*<<< orphan*/  hwndSelf; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_1__ DATETIME_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  BM_GETCHECK ; 
 scalar_t__ BN_CLICKED ; 
 scalar_t__ BST_CHECKED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static LRESULT
FUNC3 (DATETIME_INFO *infoPtr, WPARAM wParam, LPARAM lParam)
{
    if( FUNC0(wParam) == BN_CLICKED) {
        DWORD state = FUNC2((HWND)lParam, BM_GETCHECK, 0, 0);
        infoPtr->dateValid = (state == BST_CHECKED);
        FUNC1(infoPtr->hwndSelf, NULL, TRUE);
    }
    return 0;
}