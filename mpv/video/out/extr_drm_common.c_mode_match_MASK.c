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
struct TYPE_4__ {unsigned int hdisplay; unsigned int vdisplay; } ;
typedef  TYPE_1__ drmModeModeInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (double) ; 
 double FUNC1 (TYPE_1__ const*) ; 
 scalar_t__ FUNC2 (double const) ; 

__attribute__((used)) static bool FUNC3(const drmModeModeInfo *mode,
                       unsigned int width,
                       unsigned int height,
                       double refresh)
{
    if (FUNC0(refresh)) {
        return
            (mode->hdisplay == width) &&
            (mode->vdisplay == height);
    } else {
        const double mode_refresh = FUNC1(mode);
        return
            (mode->hdisplay == width) &&
            (mode->vdisplay == height) &&
            ((int)FUNC2(refresh*100) == (int)FUNC2(mode_refresh*100));
    }
}