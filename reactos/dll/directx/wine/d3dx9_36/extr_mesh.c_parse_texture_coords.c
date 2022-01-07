
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mesh_data {int num_vertices; int fvf; int * tex_coords; } ;
struct TYPE_7__ {TYPE_1__* lpVtbl; } ;
struct TYPE_6__ {int (* Unlock ) (TYPE_2__*) ;int (* Lock ) (TYPE_2__*,int*,void const**) ;} ;
typedef int SIZE_T ;
typedef TYPE_2__ ID3DXFileData ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BYTE ;


 int D3DFVF_TEX1 ;
 int D3D_OK ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int WARN (char*,int,...) ;
 int memcpy (int *,int const*,int) ;
 int stub1 (TYPE_2__*,int*,void const**) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static HRESULT parse_texture_coords(ID3DXFileData *filedata, struct mesh_data *mesh)
{
    HRESULT hr;
    SIZE_T data_size;
    const BYTE *data;

    HeapFree(GetProcessHeap(), 0, mesh->tex_coords);
    mesh->tex_coords = ((void*)0);

    hr = filedata->lpVtbl->Lock(filedata, &data_size, (const void**)&data);
    if (FAILED(hr)) return hr;
    hr = E_FAIL;

    if (data_size < sizeof(DWORD)) {
        WARN("truncated data (%ld bytes)\n", data_size);
        goto end;
    }
    if (*(DWORD*)data != mesh->num_vertices) {
        WARN("number of texture coordinates (%u) doesn't match number of vertices (%u)\n",
             *(DWORD*)data, mesh->num_vertices);
        goto end;
    }
    data += sizeof(DWORD);
    if (data_size < sizeof(DWORD) + mesh->num_vertices * sizeof(*mesh->tex_coords)) {
        WARN("truncated data (%ld bytes)\n", data_size);
        goto end;
    }

    mesh->tex_coords = HeapAlloc(GetProcessHeap(), 0, mesh->num_vertices * sizeof(*mesh->tex_coords));
    if (!mesh->tex_coords) {
        hr = E_OUTOFMEMORY;
        goto end;
    }
    memcpy(mesh->tex_coords, data, mesh->num_vertices * sizeof(*mesh->tex_coords));

    mesh->fvf |= D3DFVF_TEX1;

    hr = D3D_OK;

end:
    filedata->lpVtbl->Unlock(filedata);
    return hr;
}
