
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct mesh_data {int num_poly_faces; int num_materials; int * materials; void* material_indices; } ;
struct TYPE_13__ {TYPE_1__* lpVtbl; } ;
struct TYPE_12__ {int (* Unlock ) (TYPE_2__*) ;int (* GetType ) (TYPE_2__*,int *) ;int (* GetChild ) (TYPE_2__*,int,TYPE_2__**) ;int (* GetChildren ) (TYPE_2__*,int*) ;int (* Lock ) (TYPE_2__*,int*,void const**) ;} ;
typedef int SIZE_T ;
typedef TYPE_2__ ID3DXFileData ;
typedef int HRESULT ;
typedef int GUID ;
typedef int DWORD ;


 int D3D_OK ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int IUnknown_Release (TYPE_2__*) ;
 scalar_t__ IsEqualGUID (int *,int *) ;
 int TID_D3DRMMaterial ;
 int WARN (char*,...) ;
 int destroy_materials (struct mesh_data*) ;
 int memcpy (void*,int const*,int) ;
 int parse_material (TYPE_2__*,int *) ;
 int stub1 (TYPE_2__*,int*,void const**) ;
 int stub2 (TYPE_2__*,int*) ;
 int stub3 (TYPE_2__*,int,TYPE_2__**) ;
 int stub4 (TYPE_2__*,int *) ;
 int stub5 (TYPE_2__*) ;

__attribute__((used)) static HRESULT parse_material_list(ID3DXFileData *filedata, struct mesh_data *mesh)
{
    HRESULT hr;
    SIZE_T data_size;
    const DWORD *data, *in_ptr;
    GUID type;
    ID3DXFileData *child = ((void*)0);
    DWORD num_materials;
    DWORD i;
    SIZE_T nb_children;

    destroy_materials(mesh);

    hr = filedata->lpVtbl->Lock(filedata, &data_size, (const void**)&data);
    if (FAILED(hr)) return hr;
    in_ptr = data;
    hr = E_FAIL;

    if (data_size < sizeof(DWORD)) {
        WARN("truncated data (%ld bytes)\n", data_size);
        goto end;
    }
    num_materials = *in_ptr++;
    if (!num_materials) {
        hr = D3D_OK;
        goto end;
    }

    if (data_size < 2 * sizeof(DWORD)) {
        WARN("truncated data (%ld bytes)\n", data_size);
        goto end;
    }
    if (*in_ptr++ != mesh->num_poly_faces) {
        WARN("number of material face indices (%u) doesn't match number of faces (%u)\n",
             *(in_ptr - 1), mesh->num_poly_faces);
        goto end;
    }
    if (data_size < 2 * sizeof(DWORD) + mesh->num_poly_faces * sizeof(DWORD)) {
        WARN("truncated data (%ld bytes)\n", data_size);
        goto end;
    }
    for (i = 0; i < mesh->num_poly_faces; i++) {
        if (*in_ptr++ >= num_materials) {
            WARN("face %u: reference to undefined material %u (only %u materials)\n",
                 i, *(in_ptr - 1), num_materials);
            goto end;
        }
    }

    mesh->materials = HeapAlloc(GetProcessHeap(), 0, num_materials * sizeof(*mesh->materials));
    mesh->material_indices = HeapAlloc(GetProcessHeap(), 0, mesh->num_poly_faces * sizeof(*mesh->material_indices));
    if (!mesh->materials || !mesh->material_indices) {
        hr = E_OUTOFMEMORY;
        goto end;
    }
    memcpy(mesh->material_indices, data + 2, mesh->num_poly_faces * sizeof(DWORD));

    hr = filedata->lpVtbl->GetChildren(filedata, &nb_children);
    if (FAILED(hr))
        goto end;

    for (i = 0; i < nb_children; i++)
    {
        hr = filedata->lpVtbl->GetChild(filedata, i, &child);
        if (FAILED(hr))
            goto end;
        hr = child->lpVtbl->GetType(child, &type);
        if (FAILED(hr))
            goto end;

        if (IsEqualGUID(&type, &TID_D3DRMMaterial)) {
            if (mesh->num_materials >= num_materials) {
                WARN("more materials defined than declared\n");
                hr = E_FAIL;
                goto end;
            }
            hr = parse_material(child, &mesh->materials[mesh->num_materials++]);
            if (FAILED(hr))
                goto end;
        }

        IUnknown_Release(child);
        child = ((void*)0);
    }
    if (num_materials != mesh->num_materials) {
        WARN("only %u of %u materials defined\n", num_materials, mesh->num_materials);
        hr = E_FAIL;
    }

end:
    if (child)
        IUnknown_Release(child);
    filedata->lpVtbl->Unlock(filedata);
    return hr;
}
