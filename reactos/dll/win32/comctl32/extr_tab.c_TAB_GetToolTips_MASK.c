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
struct TYPE_4__ {int /*<<< orphan*/  hwndToolTip; } ;
typedef  TYPE_1__ TAB_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__ const*) ; 

__attribute__((used)) static inline LRESULT FUNC1 (const TAB_INFO *infoPtr)
{
    FUNC0("(%p)\n", infoPtr);
    return (LRESULT)infoPtr->hwndToolTip;
}