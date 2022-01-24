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
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_4__ {int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  HotKey; int /*<<< orphan*/  ScanCode; } ;
typedef  TYPE_1__ HOTKEY_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static void
FUNC6(HOTKEY_INFO *infoPtr, WORD hotKey)
{
    infoPtr->HotKey = hotKey;
    infoPtr->ScanCode = 
        FUNC3(0, FUNC4(FUNC2(infoPtr->HotKey), 0));
    FUNC5("(infoPtr=%p hotKey=%x) Modifiers: 0x%x, Virtual Key: %d\n", infoPtr,
          hotKey, FUNC0(infoPtr->HotKey), FUNC2(infoPtr->HotKey));
    FUNC1(infoPtr->hwndSelf, NULL, TRUE);
}