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
struct TYPE_4__ {int /*<<< orphan*/  Self; } ;
typedef  TYPE_1__ SYSLINK_INFO ;
typedef  int /*<<< orphan*/  PAINTSTRUCT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ HDC ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,scalar_t__) ; 

__attribute__((used)) static LRESULT FUNC3 (const SYSLINK_INFO *infoPtr, HDC hdcParam)
{
    HDC hdc;
    PAINTSTRUCT ps;

    hdc = hdcParam ? hdcParam : FUNC0 (infoPtr->Self, &ps);
    if (hdc)
    {
        FUNC2 (infoPtr, hdc);
        if (!hdcParam) FUNC1 (infoPtr->Self, &ps);
    }
    return 0;
}