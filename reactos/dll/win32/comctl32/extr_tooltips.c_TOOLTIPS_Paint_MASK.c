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
typedef  TYPE_1__ TOOLTIPS_INFO ;
typedef  int /*<<< orphan*/  PAINTSTRUCT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/ * HDC ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static LRESULT
FUNC3 (const TOOLTIPS_INFO *infoPtr, HDC hDC)
{
    HDC hdc;
    PAINTSTRUCT ps;

    hdc = (hDC == NULL) ? FUNC0 (infoPtr->hwndSelf, &ps) : hDC;
    FUNC2 (infoPtr, hdc);
    if (!hDC)
	FUNC1 (infoPtr->hwndSelf, &ps);
    return 0;
}