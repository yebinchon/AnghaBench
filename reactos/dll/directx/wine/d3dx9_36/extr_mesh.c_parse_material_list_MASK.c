#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct mesh_data {int num_poly_faces; int num_materials; int /*<<< orphan*/ * materials; void* material_indices; } ;
struct TYPE_13__ {TYPE_1__* lpVtbl; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* Unlock ) (TYPE_2__*) ;int /*<<< orphan*/  (* GetType ) (TYPE_2__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* GetChild ) (TYPE_2__*,int,TYPE_2__**) ;int /*<<< orphan*/  (* GetChildren ) (TYPE_2__*,int*) ;int /*<<< orphan*/  (* Lock ) (TYPE_2__*,int*,void const**) ;} ;
typedef  int SIZE_T ;
typedef  TYPE_2__ ID3DXFileData ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TID_D3DRMMaterial ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct mesh_data*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int const*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int*,void const**) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

__attribute__((used)) static HRESULT FUNC14(ID3DXFileData *filedata, struct mesh_data *mesh)
{
    HRESULT hr;
    SIZE_T data_size;
    const DWORD *data, *in_ptr;
    GUID type;
    ID3DXFileData *child = NULL;
    DWORD num_materials;
    DWORD i;
    SIZE_T nb_children;

    FUNC6(mesh);

    hr = filedata->lpVtbl->Lock(filedata, &data_size, (const void**)&data);
    if (FUNC0(hr)) return hr;

    /* template MeshMaterialList {
     *     DWORD nMaterials;
     *     DWORD nFaceIndexes;
     *     array DWORD faceIndexes[nFaceIndexes];
     *     [ Material ]
     * }
     */

    in_ptr = data;
    hr = E_FAIL;

    if (data_size < sizeof(DWORD)) {
        FUNC5("truncated data (%ld bytes)\n", data_size);
        goto end;
    }
    num_materials = *in_ptr++;
    if (!num_materials) {
        hr = D3D_OK;
        goto end;
    }

    if (data_size < 2 * sizeof(DWORD)) {
        FUNC5("truncated data (%ld bytes)\n", data_size);
        goto end;
    }
    if (*in_ptr++ != mesh->num_poly_faces) {
        FUNC5("number of material face indices (%u) doesn't match number of faces (%u)\n",
             *(in_ptr - 1), mesh->num_poly_faces);
        goto end;
    }
    if (data_size < 2 * sizeof(DWORD) + mesh->num_poly_faces * sizeof(DWORD)) {
        FUNC5("truncated data (%ld bytes)\n", data_size);
        goto end;
    }
    for (i = 0; i < mesh->num_poly_faces; i++) {
        if (*in_ptr++ >= num_materials) {
            FUNC5("face %u: reference to undefined material %u (only %u materials)\n",
                 i, *(in_ptr - 1), num_materials);
            goto end;
        }
    }

    mesh->materials = FUNC2(FUNC1(), 0, num_materials * sizeof(*mesh->materials));
    mesh->material_indices = FUNC2(FUNC1(), 0, mesh->num_poly_faces * sizeof(*mesh->material_indices));
    if (!mesh->materials || !mesh->material_indices) {
        hr = E_OUTOFMEMORY;
        goto end;
    }
    FUNC7(mesh->material_indices, data + 2, mesh->num_poly_faces * sizeof(DWORD));

    hr = filedata->lpVtbl->GetChildren(filedata, &nb_children);
    if (FUNC0(hr))
        goto end;

    for (i = 0; i < nb_children; i++)
    {
        hr = filedata->lpVtbl->GetChild(filedata, i, &child);
        if (FUNC0(hr))
            goto end;
        hr = child->lpVtbl->GetType(child, &type);
        if (FUNC0(hr))
            goto end;

        if (FUNC4(&type, &TID_D3DRMMaterial)) {
            if (mesh->num_materials >= num_materials) {
                FUNC5("more materials defined than declared\n");
                hr = E_FAIL;
                goto end;
            }
            hr = FUNC8(child, &mesh->materials[mesh->num_materials++]);
            if (FUNC0(hr))
                goto end;
        }

        FUNC3(child);
        child = NULL;
    }
    if (num_materials != mesh->num_materials) {
        FUNC5("only %u of %u materials defined\n", num_materials, mesh->num_materials);
        hr = E_FAIL;
    }

end:
    if (child)
        FUNC3(child);
    filedata->lpVtbl->Unlock(filedata);
    return hr;
}