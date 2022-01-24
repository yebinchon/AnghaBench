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
struct TYPE_3__ {int dwStyle; int orgStyle; int /*<<< orphan*/  hwndSelf; } ;
typedef  TYPE_1__ REBAR_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ HTHEME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int WS_BORDER ; 
 int /*<<< orphan*/  themeClass ; 

__attribute__((used)) static LRESULT FUNC3 (REBAR_INFO* infoPtr)
{
    HTHEME theme = FUNC1 (infoPtr->hwndSelf);
    FUNC0 (theme);
    theme = FUNC2 (infoPtr->hwndSelf, themeClass);
    /* WS_BORDER disappears when theming is enabled and reappears when
     * disabled... */
    infoPtr->dwStyle &= ~WS_BORDER;
    infoPtr->dwStyle |= theme ? 0 : (infoPtr->orgStyle & WS_BORDER);
    return 0;
}