#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_16__ ;

/* Type definitions */
struct TYPE_19__ {float r; float g; float b; float a; } ;
struct TYPE_18__ {float a; } ;
struct TYPE_20__ {TYPE_1__ Ambient; TYPE_16__ Emissive; TYPE_16__ Specular; int /*<<< orphan*/  Power; TYPE_16__ Diffuse; } ;
struct TYPE_23__ {int /*<<< orphan*/ * pTextureFilename; TYPE_2__ MatD3D; } ;
struct TYPE_22__ {TYPE_3__* lpVtbl; } ;
struct TYPE_21__ {int /*<<< orphan*/  (* GetType ) (TYPE_4__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* GetChild ) (TYPE_4__*,int,TYPE_4__**) ;int /*<<< orphan*/  (* GetChildren ) (TYPE_4__*,int*) ;int /*<<< orphan*/  (* Unlock ) (TYPE_4__*) ;int /*<<< orphan*/  (* Lock ) (TYPE_4__*,int*,void const**) ;} ;
typedef  int SIZE_T ;
typedef  TYPE_4__ ID3DXFileData ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  FLOAT ;
typedef  TYPE_5__ D3DXMATERIAL ;
typedef  int /*<<< orphan*/  D3DCOLORVALUE ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TID_D3DRMTextureFilename ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_16__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int*,void const**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC12(ID3DXFileData *filedata, D3DXMATERIAL *material)
{
    HRESULT hr;
    SIZE_T data_size;
    const BYTE *data;
    GUID type;
    ID3DXFileData *child;
    SIZE_T i, nb_children;

    material->pTextureFilename = NULL;

    hr = filedata->lpVtbl->Lock(filedata, &data_size, (const void**)&data);
    if (FUNC0(hr)) return hr;

    /*
     * template ColorRGBA {
     *     FLOAT red;
     *     FLOAT green;
     *     FLOAT blue;
     *     FLOAT alpha;
     * }
     * template ColorRGB {
     *     FLOAT red;
     *     FLOAT green;
     *     FLOAT blue;
     * }
     * template Material {
     *     ColorRGBA faceColor;
     *     FLOAT power;
     *     ColorRGB specularColor;
     *     ColorRGB emissiveColor;
     *     [ ... ]
     * }
     */
    if (data_size != sizeof(FLOAT) * 11) {
        FUNC3("incorrect data size (%ld bytes)\n", data_size);
        filedata->lpVtbl->Unlock(filedata);
        return E_FAIL;
    }

    FUNC4(&material->MatD3D.Diffuse, data, sizeof(D3DCOLORVALUE));
    data += sizeof(D3DCOLORVALUE);
    material->MatD3D.Power = *(FLOAT*)data;
    data += sizeof(FLOAT);
    FUNC4(&material->MatD3D.Specular, data, sizeof(FLOAT) * 3);
    material->MatD3D.Specular.a = 1.0f;
    data += 3 * sizeof(FLOAT);
    FUNC4(&material->MatD3D.Emissive, data, sizeof(FLOAT) * 3);
    material->MatD3D.Emissive.a = 1.0f;
    material->MatD3D.Ambient.r = 0.0f;
    material->MatD3D.Ambient.g = 0.0f;
    material->MatD3D.Ambient.b = 0.0f;
    material->MatD3D.Ambient.a = 1.0f;

    filedata->lpVtbl->Unlock(filedata);

    hr = filedata->lpVtbl->GetChildren(filedata, &nb_children);
    if (FUNC0(hr))
        return hr;

    for (i = 0; i < nb_children; i++)
    {
        hr = filedata->lpVtbl->GetChild(filedata, i, &child);
        if (FUNC0(hr))
            return hr;
        hr = child->lpVtbl->GetType(child, &type);
        if (FUNC0(hr))
            goto err;

        if (FUNC2(&type, &TID_D3DRMTextureFilename)) {
            hr = FUNC5(child, &material->pTextureFilename);
            if (FUNC0(hr))
                goto err;
        }
        FUNC1(child);
    }
    return D3D_OK;

err:
    FUNC1(child);
    return hr;
}