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
struct TYPE_3__ {int /*<<< orphan*/  rgbBlue; int /*<<< orphan*/  rgbGreen; int /*<<< orphan*/  rgbRed; } ;
typedef  TYPE_1__ RGBQUAD ;
typedef  scalar_t__ COLORREF ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int TRUE ; 

__attribute__((used)) static inline int FUNC2(RGBQUAD bmiColors[3], COLORREF redMask, COLORREF blueMask, COLORREF greenMask)
{
    COLORREF realRedMask = FUNC0(bmiColors[0].rgbRed, bmiColors[0].rgbGreen, bmiColors[0].rgbBlue);
    COLORREF realBlueMask = FUNC0(bmiColors[1].rgbRed, bmiColors[1].rgbGreen, bmiColors[1].rgbBlue);
    COLORREF realGreenMask = FUNC0(bmiColors[2].rgbRed, bmiColors[2].rgbGreen, bmiColors[2].rgbBlue);

    FUNC1("\nbmiColors[0] = 0x%08x\nbmiColors[1] = 0x%08x\nbmiColors[2] = 0x%08x\n",
        realRedMask, realBlueMask, realGreenMask);
        
    if ((realRedMask == redMask) &&
        (realBlueMask == blueMask) &&
        (realGreenMask == greenMask))
        return TRUE;
    return FALSE;
}