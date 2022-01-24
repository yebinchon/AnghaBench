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
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PCSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG_TUI_SCREENBUFFER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int UiScreenHeight ; 
 int UiScreenWidth ; 

VOID FUNC5(PCSTR MessageText)
{
    PVOID    ScreenBuffer;

    // Save the screen contents
    ScreenBuffer = FUNC0(UiScreenWidth * UiScreenHeight * 2,
                                  TAG_TUI_SCREENBUFFER);
    FUNC4(ScreenBuffer);

    // Display the message box
    FUNC2(MessageText);

    // Restore the screen contents
    FUNC3(ScreenBuffer);
    FUNC1(ScreenBuffer, TAG_TUI_SCREENBUFFER);
}