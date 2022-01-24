#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct mesh_data {TYPE_5__* skin_info; int /*<<< orphan*/  nb_bones; int /*<<< orphan*/  fvf; int /*<<< orphan*/  num_vertices; } ;
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_15__ {TYPE_1__* lpVtbl; } ;
struct TYPE_14__ {TYPE_2__* lpVtbl; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* Unlock ) (TYPE_3__*) ;int /*<<< orphan*/  (* Lock ) (TYPE_3__*,int*,void const**) ;} ;
struct TYPE_12__ {int /*<<< orphan*/  (* SetBoneOffsetMatrix ) (TYPE_5__*,int,int /*<<< orphan*/  const*) ;int /*<<< orphan*/  (* SetBoneInfluence ) (TYPE_5__*,int,int,int const*,int /*<<< orphan*/  const*) ;int /*<<< orphan*/  (* SetBoneName ) (TYPE_5__*,int,char const*) ;} ;
typedef  int SIZE_T ;
typedef  TYPE_3__ ID3DXFileData ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  FLOAT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  D3DMATRIX ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__**) ; 
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_3__*,struct mesh_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int*,void const**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int,int,int const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

__attribute__((used)) static HRESULT FUNC10(ID3DXFileData *filedata, struct mesh_data *mesh_data, DWORD index)
{
    HRESULT hr;
    SIZE_T data_size;
    const BYTE *data;

    FUNC3("(%p, %p, %u)\n", filedata, mesh_data, index);

    hr = filedata->lpVtbl->Lock(filedata, &data_size, (const void**)&data);
    if (FUNC1(hr)) return hr;

    hr = E_FAIL;

    if (!mesh_data->skin_info) {
        if (data_size < sizeof(WORD) * 3) {
            FUNC4("truncated data (%ld bytes)\n", data_size);
            goto end;
        }
        /* Skip nMaxSkinWeightsPerVertex and nMaxSkinWeightsPerFace */
        data += 2 * sizeof(WORD);
        mesh_data->nb_bones = *(WORD*)data;
        hr = FUNC0(mesh_data->num_vertices, mesh_data->fvf, mesh_data->nb_bones, &mesh_data->skin_info);
    } else {
        const char *name;
        DWORD nb_influences;

        /* FIXME: String must be retrieved directly instead of through a pointer once ID3DXFILE is fixed */
        name = *(const char**)data;
        data += sizeof(char*);

        nb_influences = *(DWORD*)data;
        data += sizeof(DWORD);

        if (data_size < (sizeof(char*) + sizeof(DWORD) + nb_influences * (sizeof(DWORD) + sizeof(FLOAT)) + 16 * sizeof(FLOAT))) {
            FUNC4("truncated data (%ld bytes)\n", data_size);
            goto end;
        }

        hr = mesh_data->skin_info->lpVtbl->SetBoneName(mesh_data->skin_info, index, name);
        if (FUNC2(hr))
            hr = mesh_data->skin_info->lpVtbl->SetBoneInfluence(mesh_data->skin_info, index, nb_influences,
                     (const DWORD*)data, (const FLOAT*)(data + nb_influences * sizeof(DWORD)));
        if (FUNC2(hr))
            hr = mesh_data->skin_info->lpVtbl->SetBoneOffsetMatrix(mesh_data->skin_info, index,
                     (const D3DMATRIX*)(data + nb_influences * (sizeof(DWORD) + sizeof(FLOAT))));
    }

end:
    filedata->lpVtbl->Unlock(filedata);
    return hr;
}