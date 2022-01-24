#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HTHEME ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int PBS_VERTICAL ; 
 int PP_BAR ; 
 int PP_BARVERT ; 

__attribute__((used)) static inline void FUNC5 (HWND hwnd, RECT* rect)
{
    HTHEME theme = FUNC3 (hwnd);
    FUNC0 (hwnd, rect);
    if (!theme)
        FUNC4(rect, -1, -1);
    else
    {
        DWORD dwStyle = FUNC2 (hwnd, GWL_STYLE);
        int part = (dwStyle & PBS_VERTICAL) ? PP_BARVERT : PP_BAR;
        FUNC1 (theme, 0, part, 0, rect, rect);
    }
}