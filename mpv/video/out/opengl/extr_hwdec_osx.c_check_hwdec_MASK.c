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
struct ra_hwdec {int /*<<< orphan*/  ra; } ;
struct TYPE_3__ {int version; } ;
typedef  TYPE_1__ GL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct ra_hwdec*,char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct ra_hwdec *hw)
{
    if (!FUNC3(hw->ra))
        return false;

    GL *gl = FUNC2(hw->ra);
    if (gl->version < 300) {
        FUNC1(hw, "need >= OpenGL 3.0 for core rectangle texture support\n");
        return false;
    }

    if (!FUNC0()) {
        FUNC1(hw, "need cocoa opengl backend to be active");
        return false;
    }

    return true;
}