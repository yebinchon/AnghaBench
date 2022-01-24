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
typedef  int /*<<< orphan*/  desc ;
struct TYPE_4__ {int /*<<< orphan*/  ViewDimension; int /*<<< orphan*/  Format; } ;
typedef  int /*<<< orphan*/  ID3D11Texture2D ;
typedef  int /*<<< orphan*/  ID3D11Resource ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ D3D11_RENDER_TARGET_VIEW_DESC ;

/* Variables and functions */
 int /*<<< orphan*/  D3D11_RTV_DIMENSION_TEXTURE2D ; 
 scalar_t__ DXGI_ERROR_DEVICE_REMOVED ; 
 scalar_t__ DXGI_ERROR_DEVICE_RESET ; 
 scalar_t__ DXGI_ERROR_DRIVER_INTERNAL_ERROR ; 
 int /*<<< orphan*/  DXGI_FORMAT_R8G8B8A8_UNORM ; 
 int /*<<< orphan*/  DXGI_FORMAT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_ID3D11Texture2D ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  device ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ rt_view ; 
 int /*<<< orphan*/  swap_chain ; 

__attribute__((used)) static void
FUNC11(int width, int height)
{
    ID3D11Texture2D *back_buffer;
    D3D11_RENDER_TARGET_VIEW_DESC desc;
    HRESULT hr;

    if (rt_view)
        FUNC2(rt_view);

    FUNC0(context, 0, NULL, NULL);

    hr = FUNC5(swap_chain, 0, width, height, DXGI_FORMAT_UNKNOWN, 0);
    if (hr == DXGI_ERROR_DEVICE_REMOVED || hr == DXGI_ERROR_DEVICE_RESET || hr == DXGI_ERROR_DRIVER_INTERNAL_ERROR)
    {
        /* to recover from this, you'll need to recreate device and all the resources */
        FUNC6(NULL, L"DXGI device is removed or reset!", L"Error", 0);
        FUNC9(0);
    }
    FUNC8(FUNC7(hr));

    FUNC10(&desc, 0, sizeof(desc));
    desc.Format = DXGI_FORMAT_R8G8B8A8_UNORM;
    desc.ViewDimension = D3D11_RTV_DIMENSION_TEXTURE2D;

    hr = FUNC4(swap_chain, 0, &IID_ID3D11Texture2D, (void **)&back_buffer);
    FUNC8(FUNC7(hr));

    hr = FUNC1(device, (ID3D11Resource *)back_buffer, &desc, &rt_view);
    FUNC8(FUNC7(hr));

    FUNC3(back_buffer);
}