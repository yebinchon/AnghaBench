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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {scalar_t__ hwndSelf; int /*<<< orphan*/  hwndNotify; } ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  TYPE_1__ ANIMATE_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_COMMAND ; 

__attribute__((used)) static void FUNC3(const ANIMATE_INFO *infoPtr, UINT notif)
{
    FUNC2(infoPtr->hwndNotify, WM_COMMAND,
		 FUNC1(FUNC0(infoPtr->hwndSelf), notif),
		 (LPARAM)infoPtr->hwndSelf);
}