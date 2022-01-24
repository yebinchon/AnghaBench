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
struct mpv_global {int dummy; } ;
struct mp_log {int dummy; } ;
struct hwcontext_create_dev_params {int dummy; } ;
struct AVBufferRef {int dummy; } ;
typedef  int /*<<< orphan*/  ID3D11Device ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  struct AVBufferRef AVBufferRef ;

/* Variables and functions */
 int /*<<< orphan*/  D3D11_CREATE_DEVICE_VIDEO_SUPPORT ; 
 int /*<<< orphan*/  D3D11_SDK_VERSION ; 
 int /*<<< orphan*/  D3D_DRIVER_TYPE_HARDWARE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct AVBufferRef* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_log*,char*,...) ; 

__attribute__((used)) static struct AVBufferRef *FUNC7(struct mpv_global *global,
        struct mp_log *plog, struct hwcontext_create_dev_params *params)
{
    ID3D11Device *device = NULL;
    HRESULT hr;

    FUNC4();
    if (!&d3d11_D3D11CreateDevice) {
        FUNC6(plog, "Failed to load D3D11 library\n");
        return NULL;
    }

    hr = FUNC2(NULL, D3D_DRIVER_TYPE_HARDWARE, NULL,
                                 D3D11_CREATE_DEVICE_VIDEO_SUPPORT, NULL, 0,
                                 D3D11_SDK_VERSION, &device, NULL, NULL);
    if (FUNC0(hr)) {
        FUNC6(plog, "Failed to create D3D11 Device: %s\n",
               FUNC5(hr));
        return NULL;
    }

    AVBufferRef *avref = FUNC3(device);
    FUNC1(device);
    if (!avref)
        FUNC6(plog, "Failed to allocate AVHWDeviceContext.\n");

    return avref;
}