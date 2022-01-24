#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  filename_in ;
struct TYPE_9__ {TYPE_1__* lpVtbl; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* Unlock ) (TYPE_2__*) ;int /*<<< orphan*/  (* Lock ) (TYPE_2__*,int*,void const**) ;} ;
typedef  int SIZE_T ;
typedef  TYPE_2__ ID3DXFileData ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int*,void const**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static HRESULT FUNC11(ID3DXFileData *filedata, char **filename_out)
{
    HRESULT hr;
    SIZE_T data_size;
    BYTE *data;
    char *filename_in;
    char *filename = NULL;

    /* template TextureFilename {
     *     STRING filename;
     * }
     */

    FUNC3(FUNC1(), 0, *filename_out);
    *filename_out = NULL;

    hr = filedata->lpVtbl->Lock(filedata, &data_size, (const void**)&data);
    if (FUNC0(hr)) return hr;

    /* FIXME: String must be retrieved directly instead of through a pointer once ID3DXFILE is fixed */
    if (data_size < sizeof(filename_in))
    {
        FUNC4("truncated data (%lu bytes)\n", data_size);
        filedata->lpVtbl->Unlock(filedata);
        return E_FAIL;
    }
    filename_in = *(char **)data;

    filename = FUNC2(FUNC1(), 0, FUNC6(filename_in) + 1);
    if (!filename) {
        filedata->lpVtbl->Unlock(filedata);
        return E_OUTOFMEMORY;
    }

    FUNC5(filename, filename_in);
    *filename_out = filename;

    filedata->lpVtbl->Unlock(filedata);

    return D3D_OK;
}