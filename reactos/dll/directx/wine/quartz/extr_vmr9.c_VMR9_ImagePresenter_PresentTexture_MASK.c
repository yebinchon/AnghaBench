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
struct VERTEX {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  d3d9_dev; int /*<<< orphan*/  d3d9_vertex; } ;
typedef  TYPE_1__ VMR9DefaultAllocatorPresenterImpl ;
typedef  int /*<<< orphan*/  IDirect3DTexture9 ;
typedef  int /*<<< orphan*/  IDirect3DSurface9 ;
typedef  int /*<<< orphan*/  IDirect3DBaseTexture9 ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  D3DPT_TRIANGLESTRIP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDirect3DTexture9 ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  USED_FVF ; 

__attribute__((used)) static HRESULT FUNC8(VMR9DefaultAllocatorPresenterImpl *This, IDirect3DSurface9 *surface)
{
    IDirect3DTexture9 *texture = NULL;
    HRESULT hr;

    hr = FUNC3(This->d3d9_dev, USED_FVF);
    if (FUNC0(hr))
    {
        FUNC1("SetFVF: %08x\n", hr);
        return hr;
    }

    hr = FUNC4(This->d3d9_dev, 0, This->d3d9_vertex, 0, sizeof(struct VERTEX));
    if (FUNC0(hr))
    {
        FUNC1("SetStreamSource: %08x\n", hr);
        return hr;
    }

    hr = FUNC6(surface, &IID_IDirect3DTexture9, (void **) &texture);
    if (FUNC0(hr))
    {
        FUNC1("IDirect3DSurface9_GetContainer failed\n");
        return hr;
    }
    hr = FUNC5(This->d3d9_dev, 0, (IDirect3DBaseTexture9 *)texture);
    FUNC7(texture);
    if (FUNC0(hr))
    {
        FUNC1("SetTexture: %08x\n", hr);
        return hr;
    }

    hr = FUNC2(This->d3d9_dev, D3DPT_TRIANGLESTRIP, 0, 2);
    if (FUNC0(hr))
    {
        FUNC1("DrawPrimitive: %08x\n", hr);
        return hr;
    }

    return S_OK;
}