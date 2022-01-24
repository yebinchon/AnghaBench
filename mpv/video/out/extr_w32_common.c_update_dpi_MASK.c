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
struct TYPE_2__ {scalar_t__ (* pGetDpiForMonitor ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ;} ;
struct vo_w32_state {int dpi; int /*<<< orphan*/  monitor; TYPE_1__ api; } ;
typedef  scalar_t__ UINT ;
typedef  scalar_t__ HDC ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOGPIXELSX ; 
 int /*<<< orphan*/  MDT_EFFECTIVE_DPI ; 
 int /*<<< orphan*/  FUNC2 (struct vo_w32_state*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static void FUNC5(struct vo_w32_state *w32)
{
    UINT dpiX, dpiY;
    if (w32->api.pGetDpiForMonitor && w32->api.pGetDpiForMonitor(w32->monitor,
                                     MDT_EFFECTIVE_DPI, &dpiX, &dpiY) == S_OK) {
        w32->dpi = (int)dpiX;
        FUNC2(w32, "DPI detected from the new API: %d\n", w32->dpi);
        return;
    }
    HDC hdc = FUNC0(NULL);
    if (hdc) {
        w32->dpi = FUNC1(hdc, LOGPIXELSX);
        FUNC3(NULL, hdc);
        FUNC2(w32, "DPI detected from the old API: %d\n", w32->dpi);
    } else {
        w32->dpi = 96;
        FUNC2(w32, "Couldn't determine DPI, falling back to %d\n", w32->dpi);
    }
}