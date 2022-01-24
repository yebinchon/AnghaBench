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
struct color_fixup_desc {scalar_t__ w_sign_fixup; int /*<<< orphan*/  w_source; scalar_t__ z_sign_fixup; int /*<<< orphan*/  z_source; scalar_t__ y_sign_fixup; int /*<<< orphan*/  y_source; scalar_t__ x_sign_fixup; int /*<<< orphan*/  x_source; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct color_fixup_desc) ; 
 scalar_t__ FUNC4 (struct color_fixup_desc) ; 

void FUNC5(struct color_fixup_desc fixup)
{
    if (FUNC4(fixup))
    {
        FUNC0("\tComplex: %s\n", FUNC1(FUNC3(fixup)));
        return;
    }

    FUNC0("\tX: %s%s\n", FUNC2(fixup.x_source), fixup.x_sign_fixup ? ", SIGN_FIXUP" : "");
    FUNC0("\tY: %s%s\n", FUNC2(fixup.y_source), fixup.y_sign_fixup ? ", SIGN_FIXUP" : "");
    FUNC0("\tZ: %s%s\n", FUNC2(fixup.z_source), fixup.z_sign_fixup ? ", SIGN_FIXUP" : "");
    FUNC0("\tW: %s%s\n", FUNC2(fixup.w_source), fixup.w_sign_fixup ? ", SIGN_FIXUP" : "");
}