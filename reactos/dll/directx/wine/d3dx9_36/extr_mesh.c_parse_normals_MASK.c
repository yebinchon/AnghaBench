#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mesh_data {int num_poly_faces; int num_tri_faces; int num_normals; int* normal_indices; int* num_tri_per_face; int /*<<< orphan*/ * normals; int /*<<< orphan*/  fvf; } ;
struct TYPE_7__ {TYPE_1__* lpVtbl; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* Unlock ) (TYPE_2__*) ;int /*<<< orphan*/  (* Lock ) (TYPE_2__*,int*,void const**) ;} ;
typedef  int SIZE_T ;
typedef  TYPE_2__ ID3DXFileData ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  D3DXVECTOR3 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  D3DFVF_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int*,void const**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static HRESULT FUNC9(ID3DXFileData *filedata, struct mesh_data *mesh)
{
    HRESULT hr;
    SIZE_T data_size;
    const BYTE *data;
    DWORD *index_out_ptr;
    DWORD i;
    DWORD num_face_indices = mesh->num_poly_faces * 2 + mesh->num_tri_faces;

    FUNC4(FUNC2(), 0, mesh->normals);
    mesh->num_normals = 0;
    mesh->normals = NULL;
    mesh->normal_indices = NULL;
    mesh->fvf |= D3DFVF_NORMAL;

    hr = filedata->lpVtbl->Lock(filedata, &data_size, (const void**)&data);
    if (FUNC1(hr)) return hr;

    /* template Vector {
     *     FLOAT x;
     *     FLOAT y;
     *     FLOAT z;
     * }
     * template MeshFace {
     *     DWORD nFaceVertexIndices;
     *     array DWORD faceVertexIndices[nFaceVertexIndices];
     * }
     * template MeshNormals {
     *     DWORD nNormals;
     *     array Vector normals[nNormals];
     *     DWORD nFaceNormals;
     *     array MeshFace faceNormals[nFaceNormals];
     * }
     */

    hr = E_FAIL;

    if (data_size < sizeof(DWORD) * 2) {
        FUNC5("truncated data (%ld bytes)\n", data_size);
        goto end;
    }
    mesh->num_normals = *(DWORD*)data;
    data += sizeof(DWORD);
    if (data_size < sizeof(DWORD) * 2 + mesh->num_normals * sizeof(D3DXVECTOR3) +
                    num_face_indices * sizeof(DWORD)) {
        FUNC5("truncated data (%ld bytes)\n", data_size);
        goto end;
    }

    mesh->normals = FUNC3(FUNC2(), 0, mesh->num_normals * sizeof(D3DXVECTOR3));
    mesh->normal_indices = FUNC3(FUNC2(), 0, num_face_indices * sizeof(DWORD));
    if (!mesh->normals || !mesh->normal_indices) {
        hr = E_OUTOFMEMORY;
        goto end;
    }

    FUNC6(mesh->normals, data, mesh->num_normals * sizeof(D3DXVECTOR3));
    data += mesh->num_normals * sizeof(D3DXVECTOR3);
    for (i = 0; i < mesh->num_normals; i++)
        FUNC0(&mesh->normals[i], &mesh->normals[i]);

    if (*(DWORD*)data != mesh->num_poly_faces) {
        FUNC5("number of face normals (%u) doesn't match number of faces (%u)\n",
             *(DWORD*)data, mesh->num_poly_faces);
        goto end;
    }
    data += sizeof(DWORD);
    index_out_ptr = mesh->normal_indices;
    for (i = 0; i < mesh->num_poly_faces; i++)
    {
        DWORD j;
        DWORD count = *(DWORD*)data;
        if (count != mesh->num_tri_per_face[i] + 2) {
            FUNC5("face %u: number of normals (%u) doesn't match number of vertices (%u)\n",
                 i, count, mesh->num_tri_per_face[i] + 2);
            goto end;
        }
        data += sizeof(DWORD);

        for (j = 0; j < count; j++) {
            DWORD normal_index = *(DWORD*)data;
            if (normal_index >= mesh->num_normals) {
                FUNC5("face %u, normal index %u: reference to undefined normal %u (only %u normals)\n",
                     i, j, normal_index, mesh->num_normals);
                goto end;
            }
            *index_out_ptr++ = normal_index;
            data += sizeof(DWORD);
        }
    }

    hr =  D3D_OK;

end:
    filedata->lpVtbl->Unlock(filedata);
    return hr;
}