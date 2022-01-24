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
struct mesh_container {int /*<<< orphan*/  mesh; int /*<<< orphan*/  num_materials; int /*<<< orphan*/  materials; int /*<<< orphan*/  adjacency; int /*<<< orphan*/  transform; int /*<<< orphan*/  entry; } ;
struct list {int dummy; } ;
struct IDirect3DDevice9 {int dummy; } ;
struct ID3DXFileData {TYPE_1__* lpVtbl; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* GetType ) (struct ID3DXFileData*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* GetChild ) (struct ID3DXFileData*,scalar_t__,struct ID3DXFileData**) ;int /*<<< orphan*/  (* GetChildren ) (struct ID3DXFileData*,scalar_t__*) ;} ;
typedef  scalar_t__ SIZE_T ;
typedef  struct ID3DXFileData ID3DXFileData ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  D3DXMATRIX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ID3DXFileData*,int,struct IDirect3DDevice9*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 struct mesh_container* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ID3DXFileData*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int PROVIDE_ADJACENCY ; 
 int PROVIDE_MATERIALS ; 
 int /*<<< orphan*/  TID_D3DRMFrame ; 
 int /*<<< orphan*/  TID_D3DRMFrameTransformMatrix ; 
 int /*<<< orphan*/  TID_D3DRMMesh ; 
 int /*<<< orphan*/  FUNC7 (struct list*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ID3DXFileData*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ID3DXFileData*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (struct ID3DXFileData*,scalar_t__,struct ID3DXFileData**) ; 
 int /*<<< orphan*/  FUNC11 (struct ID3DXFileData*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC12(struct ID3DXFileData *filedata, DWORD options, struct IDirect3DDevice9 *device,
        const D3DXMATRIX *parent_transform, struct list *container_list, DWORD provide_flags)
{
    HRESULT hr;
    D3DXMATRIX transform = *parent_transform;
    ID3DXFileData *child;
    GUID type;
    SIZE_T i, nb_children;

    hr = filedata->lpVtbl->GetChildren(filedata, &nb_children);
    if (FUNC2(hr))
        return hr;

    for (i = 0; i < nb_children; i++)
    {
        hr = filedata->lpVtbl->GetChild(filedata, i, &child);
        if (FUNC2(hr))
            return hr;
        hr = child->lpVtbl->GetType(child, &type);
        if (FUNC2(hr))
            goto err;

        if (FUNC6(&type, &TID_D3DRMMesh)) {
            struct mesh_container *container = FUNC4(FUNC3(), HEAP_ZERO_MEMORY, sizeof(*container));
            if (!container)
            {
                hr = E_OUTOFMEMORY;
                goto err;
            }
            FUNC7(container_list, &container->entry);
            container->transform = transform;

            hr = FUNC0(child, options, device,
                    (provide_flags & PROVIDE_ADJACENCY) ? &container->adjacency : NULL,
                    (provide_flags & PROVIDE_MATERIALS) ? &container->materials : NULL,
                    NULL, &container->num_materials, NULL, &container->mesh);
        } else if (FUNC6(&type, &TID_D3DRMFrameTransformMatrix)) {
            D3DXMATRIX new_transform;
            hr = FUNC8(child, &new_transform);
            FUNC1(&transform, &transform, &new_transform);
        } else if (FUNC6(&type, &TID_D3DRMFrame)) {
            hr = FUNC12(child, options, device, &transform, container_list, provide_flags);
        }
        if (FUNC2(hr))
            goto err;

        FUNC5(child);
    }
    return D3D_OK;

err:
    FUNC5(child);
    return hr;
}