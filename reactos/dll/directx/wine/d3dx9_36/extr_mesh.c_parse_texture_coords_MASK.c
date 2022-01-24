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
struct mesh_data {int num_vertices; int /*<<< orphan*/  fvf; int /*<<< orphan*/ * tex_coords; } ;
struct TYPE_7__ {TYPE_1__* lpVtbl; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* Unlock ) (TYPE_2__*) ;int /*<<< orphan*/  (* Lock ) (TYPE_2__*,int*,void const**) ;} ;
typedef  int SIZE_T ;
typedef  TYPE_2__ ID3DXFileData ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  D3DFVF_TEX1 ; 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int*,void const**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static HRESULT FUNC8(ID3DXFileData *filedata, struct mesh_data *mesh)
{
    HRESULT hr;
    SIZE_T data_size;
    const BYTE *data;

    FUNC3(FUNC1(), 0, mesh->tex_coords);
    mesh->tex_coords = NULL;

    hr = filedata->lpVtbl->Lock(filedata, &data_size, (const void**)&data);
    if (FUNC0(hr)) return hr;

    /* template Coords2d {
     *     FLOAT u;
     *     FLOAT v;
     * }
     * template MeshTextureCoords {
     *     DWORD nTextureCoords;
     *     array Coords2d textureCoords[nTextureCoords];
     * }
     */

    hr = E_FAIL;

    if (data_size < sizeof(DWORD)) {
        FUNC4("truncated data (%ld bytes)\n", data_size);
        goto end;
    }
    if (*(DWORD*)data != mesh->num_vertices) {
        FUNC4("number of texture coordinates (%u) doesn't match number of vertices (%u)\n",
             *(DWORD*)data, mesh->num_vertices);
        goto end;
    }
    data += sizeof(DWORD);
    if (data_size < sizeof(DWORD) + mesh->num_vertices * sizeof(*mesh->tex_coords)) {
        FUNC4("truncated data (%ld bytes)\n", data_size);
        goto end;
    }

    mesh->tex_coords = FUNC2(FUNC1(), 0, mesh->num_vertices * sizeof(*mesh->tex_coords));
    if (!mesh->tex_coords) {
        hr = E_OUTOFMEMORY;
        goto end;
    }
    FUNC5(mesh->tex_coords, data, mesh->num_vertices * sizeof(*mesh->tex_coords));

    mesh->fvf |= D3DFVF_TEX1;

    hr = D3D_OK;

end:
    filedata->lpVtbl->Unlock(filedata);
    return hr;
}