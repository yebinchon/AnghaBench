#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct ddraw_surface {int dummy; } ;
struct ddraw {int cooperative_level; int /*<<< orphan*/  wined3d_device; struct d3d_device* d3ddevice; } ;
struct TYPE_15__ {float member_0; float member_1; float member_2; float member_3; float member_4; float member_5; float member_6; float member_7; float member_8; float member_9; float member_10; float member_11; float member_12; float member_13; float member_14; float member_15; } ;
struct TYPE_14__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_13__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_12__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_11__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_10__ {int /*<<< orphan*/ * lpVtbl; } ;
struct d3d_device {int ref; int version; TYPE_5__* rt_iface; int /*<<< orphan*/  handle_table; int /*<<< orphan*/  wined3d_device; TYPE_6__ legacy_clipspace; TYPE_6__ legacy_projection; int /*<<< orphan*/  legacyTextureBlending; int /*<<< orphan*/  viewport_list; struct ddraw* ddraw; TYPE_5__ IUnknown_inner; TYPE_5__* outer_unknown; int /*<<< orphan*/  hw; TYPE_4__ IDirect3DDevice_iface; TYPE_3__ IDirect3DDevice2_iface; TYPE_2__ IDirect3DDevice3_iface; TYPE_1__ IDirect3DDevice7_iface; } ;
typedef  int UINT ;
typedef  TYPE_5__ IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_6__ D3DMATRIX ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  DDERR_OUTOFMEMORY ; 
 int DDSCL_FPUPRESERVE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WINED3D_RS_COLORKEYENABLE ; 
 int /*<<< orphan*/  WINED3D_RS_NORMALIZENORMALS ; 
 int /*<<< orphan*/  WINED3D_RS_SPECULARENABLE ; 
 int /*<<< orphan*/  WINED3D_RS_ZENABLE ; 
 int /*<<< orphan*/  d3d_device1_vtbl ; 
 int /*<<< orphan*/  d3d_device2_vtbl ; 
 int /*<<< orphan*/  d3d_device3_vtbl ; 
 int /*<<< orphan*/  d3d_device7_fpu_preserve_vtbl ; 
 int /*<<< orphan*/  d3d_device7_fpu_setup_vtbl ; 
 int /*<<< orphan*/  d3d_device_inner_vtbl ; 
 int /*<<< orphan*/  FUNC3 (struct d3d_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ddraw_surface*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC11(struct d3d_device *device, struct ddraw *ddraw, BOOL hw,
        struct ddraw_surface *target, IUnknown *rt_iface, UINT version, IUnknown *outer_unknown)
{
    static const D3DMATRIX ident =
    {
        1.0f, 0.0f, 0.0f, 0.0f,
        0.0f, 1.0f, 0.0f, 0.0f,
        0.0f, 0.0f, 1.0f, 0.0f,
        0.0f, 0.0f, 0.0f, 1.0f,
    };
    HRESULT hr;

    if (ddraw->cooperative_level & DDSCL_FPUPRESERVE)
        device->IDirect3DDevice7_iface.lpVtbl = &d3d_device7_fpu_preserve_vtbl;
    else
        device->IDirect3DDevice7_iface.lpVtbl = &d3d_device7_fpu_setup_vtbl;

    device->IDirect3DDevice3_iface.lpVtbl = &d3d_device3_vtbl;
    device->IDirect3DDevice2_iface.lpVtbl = &d3d_device2_vtbl;
    device->IDirect3DDevice_iface.lpVtbl = &d3d_device1_vtbl;
    device->IUnknown_inner.lpVtbl = &d3d_device_inner_vtbl;
    device->ref = 1;
    device->version = version;
    device->hw = hw;

    if (outer_unknown)
        device->outer_unknown = outer_unknown;
    else
        device->outer_unknown = &device->IUnknown_inner;

    device->ddraw = ddraw;
    FUNC7(&device->viewport_list);

    if (!FUNC5(&device->handle_table, 64))
    {
        FUNC0("Failed to initialize handle table.\n");
        return DDERR_OUTOFMEMORY;
    }

    device->legacyTextureBlending = FALSE;
    device->legacy_projection = ident;
    device->legacy_clipspace = ident;

    /* This is for convenience. */
    device->wined3d_device = ddraw->wined3d_device;
    FUNC8(ddraw->wined3d_device);

    /* Render to the back buffer */
    if (FUNC1(hr = FUNC10(ddraw->wined3d_device,
            0, FUNC6(target), TRUE)))
    {
        FUNC0("Failed to set render target, hr %#x.\n", hr);
        FUNC4(&device->handle_table);
        return hr;
    }

    device->rt_iface = rt_iface;
    if (version != 1)
        FUNC2(device->rt_iface);

    ddraw->d3ddevice = device;

    FUNC9(ddraw->wined3d_device, WINED3D_RS_ZENABLE,
            FUNC3(device));
    if (version == 1) /* Color keying is initially enabled for version 1 devices. */
        FUNC9(ddraw->wined3d_device, WINED3D_RS_COLORKEYENABLE, TRUE);
    else if (version == 2)
        FUNC9(ddraw->wined3d_device, WINED3D_RS_SPECULARENABLE, TRUE);
    if (version < 7)
        FUNC9(ddraw->wined3d_device, WINED3D_RS_NORMALIZENORMALS, TRUE);

    return D3D_OK;
}