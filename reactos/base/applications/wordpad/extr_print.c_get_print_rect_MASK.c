#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ bottom; scalar_t__ right; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  scalar_t__ HDC ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOGPIXELSX ; 
 int /*<<< orphan*/  LOGPIXELSY ; 
 int /*<<< orphan*/  PHYSICALHEIGHT ; 
 int /*<<< orphan*/  PHYSICALWIDTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 TYPE_1__ margins ; 

__attribute__((used)) static RECT FUNC4(HDC hdc)
{
    RECT rc;
    int width, height;

    if(hdc)
    {
        int dpiY = FUNC0(hdc, LOGPIXELSY);
        int dpiX = FUNC0(hdc, LOGPIXELSX);
        width = FUNC3(FUNC0(hdc, PHYSICALWIDTH), dpiX);
        height = FUNC3(FUNC0(hdc, PHYSICALHEIGHT), dpiY);
    } else
    {
        width = FUNC2(18500);
        height = FUNC2(27000);
    }

    FUNC1(&rc, margins.left, margins.top, width - margins.right, height - margins.bottom);

    return rc;
}