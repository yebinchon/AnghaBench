
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mesh_container {int mesh; int num_materials; int materials; int adjacency; int transform; int entry; } ;
struct list {int dummy; } ;
struct IDirect3DDevice9 {int dummy; } ;
struct ID3DXFileData {TYPE_1__* lpVtbl; } ;
struct TYPE_2__ {int (* GetType ) (struct ID3DXFileData*,int *) ;int (* GetChild ) (struct ID3DXFileData*,scalar_t__,struct ID3DXFileData**) ;int (* GetChildren ) (struct ID3DXFileData*,scalar_t__*) ;} ;
typedef scalar_t__ SIZE_T ;
typedef struct ID3DXFileData ID3DXFileData ;
typedef int HRESULT ;
typedef int GUID ;
typedef int DWORD ;
typedef int D3DXMATRIX ;


 int D3DXLoadSkinMeshFromXof (struct ID3DXFileData*,int,struct IDirect3DDevice9*,int *,int *,int *,int *,int *,int *) ;
 int D3DXMatrixMultiply (int *,int *,int *) ;
 int D3D_OK ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 struct mesh_container* HeapAlloc (int ,int ,int) ;
 int IUnknown_Release (struct ID3DXFileData*) ;
 scalar_t__ IsEqualGUID (int *,int *) ;
 int PROVIDE_ADJACENCY ;
 int PROVIDE_MATERIALS ;
 int TID_D3DRMFrame ;
 int TID_D3DRMFrameTransformMatrix ;
 int TID_D3DRMMesh ;
 int list_add_tail (struct list*,int *) ;
 int parse_transform_matrix (struct ID3DXFileData*,int *) ;
 int stub1 (struct ID3DXFileData*,scalar_t__*) ;
 int stub2 (struct ID3DXFileData*,scalar_t__,struct ID3DXFileData**) ;
 int stub3 (struct ID3DXFileData*,int *) ;

__attribute__((used)) static HRESULT parse_frame(struct ID3DXFileData *filedata, DWORD options, struct IDirect3DDevice9 *device,
        const D3DXMATRIX *parent_transform, struct list *container_list, DWORD provide_flags)
{
    HRESULT hr;
    D3DXMATRIX transform = *parent_transform;
    ID3DXFileData *child;
    GUID type;
    SIZE_T i, nb_children;

    hr = filedata->lpVtbl->GetChildren(filedata, &nb_children);
    if (FAILED(hr))
        return hr;

    for (i = 0; i < nb_children; i++)
    {
        hr = filedata->lpVtbl->GetChild(filedata, i, &child);
        if (FAILED(hr))
            return hr;
        hr = child->lpVtbl->GetType(child, &type);
        if (FAILED(hr))
            goto err;

        if (IsEqualGUID(&type, &TID_D3DRMMesh)) {
            struct mesh_container *container = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*container));
            if (!container)
            {
                hr = E_OUTOFMEMORY;
                goto err;
            }
            list_add_tail(container_list, &container->entry);
            container->transform = transform;

            hr = D3DXLoadSkinMeshFromXof(child, options, device,
                    (provide_flags & PROVIDE_ADJACENCY) ? &container->adjacency : ((void*)0),
                    (provide_flags & PROVIDE_MATERIALS) ? &container->materials : ((void*)0),
                    ((void*)0), &container->num_materials, ((void*)0), &container->mesh);
        } else if (IsEqualGUID(&type, &TID_D3DRMFrameTransformMatrix)) {
            D3DXMATRIX new_transform;
            hr = parse_transform_matrix(child, &new_transform);
            D3DXMatrixMultiply(&transform, &transform, &new_transform);
        } else if (IsEqualGUID(&type, &TID_D3DRMFrame)) {
            hr = parse_frame(child, options, device, &transform, container_list, provide_flags);
        }
        if (FAILED(hr))
            goto err;

        IUnknown_Release(child);
    }
    return D3D_OK;

err:
    IUnknown_Release(child);
    return hr;
}
