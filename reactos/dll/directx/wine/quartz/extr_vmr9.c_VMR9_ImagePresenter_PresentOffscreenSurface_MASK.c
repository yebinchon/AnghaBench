#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* pVMR9; int /*<<< orphan*/  d3d9_dev; } ;
typedef  TYPE_3__ VMR9DefaultAllocatorPresenterImpl ;
struct TYPE_5__ {scalar_t__ left; scalar_t__ right; scalar_t__ top; scalar_t__ bottom; } ;
struct TYPE_6__ {int /*<<< orphan*/  source_rect; TYPE_1__ target_rect; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  IDirect3DSurface9 ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  D3DBACKBUFFER_TYPE_MONO ; 
 int /*<<< orphan*/  D3DTEXF_LINEAR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC6(VMR9DefaultAllocatorPresenterImpl *This, IDirect3DSurface9 *surface)
{
    HRESULT hr;
    IDirect3DSurface9 *target = NULL;
    RECT target_rect;

    hr = FUNC2(This->d3d9_dev, 0, 0, D3DBACKBUFFER_TYPE_MONO, &target);
    if (FUNC1(hr))
    {
        FUNC0("IDirect3DDevice9_GetBackBuffer -- %08x\n", hr);
        return hr;
    }

    /* Move rect to origin and flip it */
    FUNC5(&target_rect, 0, This->pVMR9->target_rect.bottom - This->pVMR9->target_rect.top,
            This->pVMR9->target_rect.right - This->pVMR9->target_rect.left, 0);

    hr = FUNC3(This->d3d9_dev, surface, &This->pVMR9->source_rect, target, &target_rect, D3DTEXF_LINEAR);
    if (FUNC1(hr))
        FUNC0("IDirect3DDevice9_StretchRect -- %08x\n", hr);
    FUNC4(target);

    return hr;
}