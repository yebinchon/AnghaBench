#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_5__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_4__ {int /*<<< orphan*/ * lpVtbl; } ;
struct d3drm_frame {int ref; int traversal_options; int /*<<< orphan*/ * d3drm; TYPE_3__ IDirect3DRMFrame3_iface; int /*<<< orphan*/  transform; int /*<<< orphan*/  obj; int /*<<< orphan*/  scenebackground; TYPE_2__ IDirect3DRMFrame2_iface; TYPE_1__ IDirect3DRMFrame_iface; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IDirect3DRMFrame3 ;
typedef  int /*<<< orphan*/  IDirect3DRM ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int D3DRMFRAME_PICKENABLE ; 
 int D3DRMFRAME_RENDERENABLE ; 
 int /*<<< orphan*/  D3DRM_OK ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDirect3DRMFrame3 ; 
 int /*<<< orphan*/  FUNC5 (char*,struct d3drm_frame**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  d3drm_frame1_vtbl ; 
 int /*<<< orphan*/  d3drm_frame2_vtbl ; 
 int /*<<< orphan*/  d3drm_frame3_vtbl ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,float,float,float,float) ; 
 struct d3drm_frame* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct d3drm_frame*) ; 
 int /*<<< orphan*/  identity ; 

HRESULT FUNC10(struct d3drm_frame **frame, IUnknown *parent_frame, IDirect3DRM *d3drm)
{
    static const char classname[] = "Frame";
    struct d3drm_frame *object;
    HRESULT hr = D3DRM_OK;

    FUNC5("frame %p, parent_frame %p, d3drm %p.\n", frame, parent_frame, d3drm);

    if (!(object = FUNC8(sizeof(*object))))
        return E_OUTOFMEMORY;

    object->IDirect3DRMFrame_iface.lpVtbl = &d3drm_frame1_vtbl;
    object->IDirect3DRMFrame2_iface.lpVtbl = &d3drm_frame2_vtbl;
    object->IDirect3DRMFrame3_iface.lpVtbl = &d3drm_frame3_vtbl;
    object->d3drm = d3drm;
    object->ref = 1;
    FUNC7(&object->scenebackground, 0.0f, 0.0f, 0.0f, 1.0f);
    object->traversal_options = D3DRMFRAME_RENDERENABLE | D3DRMFRAME_PICKENABLE;

    FUNC6(&object->obj, classname);

    object->transform = identity;

    if (parent_frame)
    {
        IDirect3DRMFrame3 *p;

        if (FUNC0(hr = FUNC2(parent_frame, &IID_IDirect3DRMFrame3, (void **)&p)))
        {
            FUNC9(object);
            return hr;
        }
        FUNC3(parent_frame);
        FUNC1(p, &object->IDirect3DRMFrame3_iface);
    }

    FUNC4(object->d3drm);

    *frame = object;

    return hr;
}