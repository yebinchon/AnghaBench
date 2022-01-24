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
struct d3drm_mesh {int /*<<< orphan*/  IDirect3DRMMesh_iface; } ;
typedef  int /*<<< orphan*/  IDirect3DRM ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct d3drm_mesh**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC2(void **object, IDirect3DRM *d3drm)
{
    struct d3drm_mesh *mesh;
    HRESULT hr;

    if (FUNC0(hr = FUNC1(&mesh, d3drm)))
        return hr;

    *object = &mesh->IDirect3DRMMesh_iface;

    return hr;
}