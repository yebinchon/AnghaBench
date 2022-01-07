
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* pGetDpiForMonitor ) (int ,int ,scalar_t__*,scalar_t__*) ;} ;
struct vo_w32_state {int dpi; int monitor; TYPE_1__ api; } ;
typedef scalar_t__ UINT ;
typedef scalar_t__ HDC ;


 scalar_t__ GetDC (int *) ;
 int GetDeviceCaps (scalar_t__,int ) ;
 int LOGPIXELSX ;
 int MDT_EFFECTIVE_DPI ;
 int MP_VERBOSE (struct vo_w32_state*,char*,int) ;
 int ReleaseDC (int *,scalar_t__) ;
 scalar_t__ S_OK ;
 scalar_t__ stub1 (int ,int ,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static void update_dpi(struct vo_w32_state *w32)
{
    UINT dpiX, dpiY;
    if (w32->api.pGetDpiForMonitor && w32->api.pGetDpiForMonitor(w32->monitor,
                                     MDT_EFFECTIVE_DPI, &dpiX, &dpiY) == S_OK) {
        w32->dpi = (int)dpiX;
        MP_VERBOSE(w32, "DPI detected from the new API: %d\n", w32->dpi);
        return;
    }
    HDC hdc = GetDC(((void*)0));
    if (hdc) {
        w32->dpi = GetDeviceCaps(hdc, LOGPIXELSX);
        ReleaseDC(((void*)0), hdc);
        MP_VERBOSE(w32, "DPI detected from the old API: %d\n", w32->dpi);
    } else {
        w32->dpi = 96;
        MP_VERBOSE(w32, "Couldn't determine DPI, falling back to %d\n", w32->dpi);
    }
}
