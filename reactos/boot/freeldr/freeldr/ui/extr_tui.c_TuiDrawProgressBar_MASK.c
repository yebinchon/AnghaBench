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
typedef  int /*<<< orphan*/  VOID ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  PCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HORZ ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  UiMenuBgColor ; 
 int /*<<< orphan*/  UiMenuFgColor ; 
 int /*<<< orphan*/  UiTextColor ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VERT ; 
 int /*<<< orphan*/  FUNC6 () ; 

VOID FUNC7(ULONG Left, ULONG Top, ULONG Right, ULONG Bottom, ULONG Position, ULONG Range, PCHAR ProgressText)
{
    ULONG    i;
    ULONG    ProgressBarWidth = (Right - Left) - 3;

    // First make sure the progress bar text fits
    FUNC5(ProgressText, ProgressBarWidth - 4);

    if (Position > Range)
    {
        Position = Range;
    }

    // Draw the box
    FUNC1(Left, Top, Right, Bottom, VERT, HORZ, TRUE, TRUE, FUNC0(UiMenuFgColor, UiMenuBgColor));

    //
    //  Draw the "Loading..." text
    //
    FUNC2(Left + 2, Top + 2, Right - 2, Top + 2, ProgressText, FUNC0(UiTextColor, UiMenuBgColor));

    // Draw the percent complete
    for (i=0; i<(Position*ProgressBarWidth)/Range; i++)
    {
        FUNC3(Left+2+i, Top+2, "\xDB", FUNC0(UiTextColor, UiMenuBgColor));
    }

    // Draw the shadow
    for (; i<ProgressBarWidth; i++)
    {
        FUNC3(Left+2+i, Top+2, "\xB2", FUNC0(UiTextColor, UiMenuBgColor));
    }

    FUNC4();
    FUNC6();
}