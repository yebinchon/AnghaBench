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
struct TYPE_4__ {int /*<<< orphan*/  hwndSelf; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_1__ LISTVIEW_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static inline void FUNC4(const LISTVIEW_INFO *infoPtr, const RECT* rect)
{
    if(!FUNC2(infoPtr)) return; 
    FUNC1(" invalidating rect=%s\n", FUNC3(rect));
    FUNC0(infoPtr->hwndSelf, rect, TRUE);
}