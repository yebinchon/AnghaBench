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
typedef  scalar_t__ SIZE_T ;
typedef  char* PCSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ UiScreenHeight ; 
 scalar_t__ UiScreenWidth ; 
 int /*<<< orphan*/  UiStatusBarBgColor ; 
 int /*<<< orphan*/  UiStatusBarFgColor ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char*) ; 

VOID FUNC4(PCSTR StatusText)
{
    SIZE_T    i;

    FUNC1(0, UiScreenHeight-1, " ", FUNC0(UiStatusBarFgColor, UiStatusBarBgColor));
    FUNC1(1, UiScreenHeight-1, StatusText, FUNC0(UiStatusBarFgColor, UiStatusBarBgColor));

    for (i=FUNC3(StatusText)+1; i<UiScreenWidth; i++)
    {
        FUNC1((ULONG)i, UiScreenHeight-1, " ", FUNC0(UiStatusBarFgColor, UiStatusBarBgColor));
    }

    FUNC2();
}