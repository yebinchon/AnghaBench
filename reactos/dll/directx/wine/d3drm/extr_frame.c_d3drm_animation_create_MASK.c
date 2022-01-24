#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_3__ {int /*<<< orphan*/ * lpVtbl; } ;
struct d3drm_animation {int ref; int options; int /*<<< orphan*/ * d3drm; int /*<<< orphan*/  obj; TYPE_2__ IDirect3DRMAnimation2_iface; TYPE_1__ IDirect3DRMAnimation_iface; } ;
typedef  int /*<<< orphan*/  IDirect3DRM ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int D3DRMANIMATION_CLOSED ; 
 int D3DRMANIMATION_LINEARPOSITION ; 
 int /*<<< orphan*/  D3DRM_OK ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct d3drm_animation**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  d3drm_animation1_vtbl ; 
 int /*<<< orphan*/  d3drm_animation2_vtbl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 struct d3drm_animation* FUNC3 (int) ; 

HRESULT FUNC4(struct d3drm_animation **animation, IDirect3DRM *d3drm)
{
    static const char classname[] = "Animation";
    struct d3drm_animation *object;
    HRESULT hr = D3DRM_OK;

    FUNC1("animation %p, d3drm %p.\n", animation, d3drm);

    if (!(object = FUNC3(sizeof(*object))))
        return E_OUTOFMEMORY;

    object->IDirect3DRMAnimation_iface.lpVtbl = &d3drm_animation1_vtbl;
    object->IDirect3DRMAnimation2_iface.lpVtbl = &d3drm_animation2_vtbl;
    object->d3drm = d3drm;
    object->ref = 1;
    object->options = D3DRMANIMATION_CLOSED | D3DRMANIMATION_LINEARPOSITION;

    FUNC2(&object->obj, classname);

    FUNC0(object->d3drm);

    *animation = object;

    return hr;
}