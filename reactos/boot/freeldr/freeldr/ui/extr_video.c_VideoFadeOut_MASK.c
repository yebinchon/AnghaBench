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
typedef  scalar_t__ ULONG ;
typedef  scalar_t__ UCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ RGB_MAX ; 
 scalar_t__ RGB_MAX_PER_ITERATION ; 

VOID FUNC3(ULONG ColorCount)
{
    ULONG Index;
    UCHAR Color;
    UCHAR Red;
    UCHAR Green;
    UCHAR Blue;

    for (Index = 0; Index < RGB_MAX; Index++)
    {
        for (Color = 0; Color < ColorCount; Color++)
        {
            if ((Color % RGB_MAX_PER_ITERATION) == 0)
            {
                FUNC2();
            }

            FUNC0(Color, &Red, &Green, &Blue);

            if (Red > 0)
            {
                Red--;
            }
            if (Green > 0)
            {
                Green--;
            }
            if (Blue > 0)
            {
                Blue--;
            }

            FUNC1(Color, Red, Green, Blue);
        }
    }
}