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
struct TYPE_4__ {int /*<<< orphan*/  HotKey; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_1__ HOTKEY_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT
FUNC3(const HOTKEY_INFO *infoPtr)
{
    FUNC2("(infoPtr=%p) Modifiers: 0x%x, Virtual Key: %d\n", infoPtr, 
          FUNC0(infoPtr->HotKey), FUNC1(infoPtr->HotKey));
    return (LRESULT)infoPtr->HotKey;
}