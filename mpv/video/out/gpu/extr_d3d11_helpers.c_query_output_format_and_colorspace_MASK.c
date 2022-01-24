#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mp_log {int dummy; } ;
struct TYPE_4__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_5__ {int BitsPerColor; int /*<<< orphan*/  ColorSpace; TYPE_1__ DesktopCoordinates; int /*<<< orphan*/  DeviceName; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  IDXGISwapChain ;
typedef  int /*<<< orphan*/  IDXGIOutput6 ;
typedef  int /*<<< orphan*/  IDXGIOutput ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ DXGI_OUTPUT_DESC1 ;
typedef  int /*<<< orphan*/  DXGI_FORMAT ;
typedef  int /*<<< orphan*/  DXGI_COLOR_SPACE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  DXGI_FORMAT_R10G10B10A2_UNORM ; 
 int /*<<< orphan*/  DXGI_FORMAT_R8G8B8A8_UNORM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IID_IDXGIOutput6 ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  MSGL_ERR ; 
 int /*<<< orphan*/  MSGL_V ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mp_log*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mp_log*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mp_log*,char*,char*,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static bool FUNC13(struct mp_log *log,
                                               IDXGISwapChain *swapchain,
                                               DXGI_FORMAT *out_fmt,
                                               DXGI_COLOR_SPACE_TYPE *out_cspace)
{
    IDXGIOutput *output = NULL;
    IDXGIOutput6 *output6 = NULL;
    DXGI_OUTPUT_DESC1 desc = { 0 };
    char *monitor_name = NULL;
    bool success = false;

    if (!out_fmt || !out_cspace)
        return false;

    HRESULT hr = FUNC3(swapchain, &output);
    if (FUNC0(hr)) {
        FUNC8(log, "Failed to get swap chain's containing output: %s!\n",
               FUNC7(hr));
        goto done;
    }

    hr = FUNC2(output, &IID_IDXGIOutput6,
                                    (void**)&output6);
    if (FUNC0(hr)) {
        // point where systems older than Windows 10 would fail,
        // thus utilizing error log level only with windows 10+
        FUNC9(log, FUNC4() ? MSGL_ERR : MSGL_V,
               "Failed to create a DXGI 1.6 output interface: %s\n",
               FUNC7(hr));
        goto done;
    }

    hr = FUNC1(output6, &desc);
    if (FUNC0(hr)) {
        FUNC8(log, "Failed to query swap chain's output information: %s\n",
               FUNC7(hr));
        goto done;
    }

    monitor_name = FUNC10(NULL, desc.DeviceName);

    FUNC11(log, "Queried output: %s, %ldx%ld @ %d bits, colorspace: %s (%d)\n",
               monitor_name,
               desc.DesktopCoordinates.right - desc.DesktopCoordinates.left,
               desc.DesktopCoordinates.bottom - desc.DesktopCoordinates.top,
               desc.BitsPerColor,
               FUNC6(desc.ColorSpace),
               desc.ColorSpace);

    *out_cspace = desc.ColorSpace;

    // limit ourselves to the 8bit and 10bit formats for now.
    // while the 16bit float format would be preferable as something
    // to default to, it seems to be hard-coded to linear transfer
    // in windowed mode, and follows configured colorspace in full screen.
    *out_fmt = desc.BitsPerColor > 8 ?
               DXGI_FORMAT_R10G10B10A2_UNORM : DXGI_FORMAT_R8G8B8A8_UNORM;

    success = true;

done:
    FUNC12(monitor_name);
    FUNC5(output6);
    FUNC5(output);
    return success;
}