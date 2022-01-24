#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  uVItemPadding_s; int /*<<< orphan*/  uHItemPadding_s; } ;
typedef  TYPE_1__ TAB_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline LRESULT
FUNC3 (TAB_INFO *infoPtr, LPARAM lParam)
{
    FUNC2("(%p %d %d)\n", infoPtr, FUNC1(lParam), FUNC0(lParam));
    infoPtr->uHItemPadding_s = FUNC1(lParam);
    infoPtr->uVItemPadding_s = FUNC0(lParam);

    return 0;
}