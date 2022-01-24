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
struct TYPE_3__ {int /*<<< orphan*/  clrBk; int /*<<< orphan*/  Self; } ;
typedef  TYPE_1__ STATUS_INFO ;
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static COLORREF
FUNC2 (STATUS_INFO *infoPtr, COLORREF color)
{
    COLORREF oldBkColor;

    oldBkColor = infoPtr->clrBk;
    infoPtr->clrBk = color;
    FUNC0(infoPtr->Self, NULL, FALSE);

    FUNC1("CREF: %08x -> %08x\n", oldBkColor, infoPtr->clrBk);
    return oldBkColor;
}