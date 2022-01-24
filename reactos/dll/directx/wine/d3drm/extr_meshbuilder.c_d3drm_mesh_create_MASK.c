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
struct TYPE_2__ {int /*<<< orphan*/ * lpVtbl; } ;
struct d3drm_mesh {int ref; int /*<<< orphan*/  obj; int /*<<< orphan*/ * d3drm; TYPE_1__ IDirect3DRMMesh_iface; } ;
typedef  int /*<<< orphan*/  IDirect3DRM ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,struct d3drm_mesh**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  d3drm_mesh_vtbl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 struct d3drm_mesh* FUNC3 (int) ; 

HRESULT FUNC4(struct d3drm_mesh **mesh, IDirect3DRM *d3drm)
{
    static const char classname[] = "Mesh";
    struct d3drm_mesh *object;

    FUNC1("mesh %p, d3drm %p.\n", mesh, d3drm);

    if (!(object = FUNC3(sizeof(*object))))
        return E_OUTOFMEMORY;

    object->IDirect3DRMMesh_iface.lpVtbl = &d3drm_mesh_vtbl;
    object->ref = 1;
    object->d3drm = d3drm;
    FUNC0(object->d3drm);

    FUNC2(&object->obj, classname);

    *mesh = object;

    return S_OK;
}