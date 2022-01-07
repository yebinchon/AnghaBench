
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int filename_in ;
struct TYPE_9__ {TYPE_1__* lpVtbl; } ;
struct TYPE_8__ {int (* Unlock ) (TYPE_2__*) ;int (* Lock ) (TYPE_2__*,int*,void const**) ;} ;
typedef int SIZE_T ;
typedef TYPE_2__ ID3DXFileData ;
typedef int HRESULT ;
typedef int BYTE ;


 int D3D_OK ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,char*) ;
 int WARN (char*,int) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int stub1 (TYPE_2__*,int*,void const**) ;
 int stub2 (TYPE_2__*) ;
 int stub3 (TYPE_2__*) ;
 int stub4 (TYPE_2__*) ;

__attribute__((used)) static HRESULT parse_texture_filename(ID3DXFileData *filedata, char **filename_out)
{
    HRESULT hr;
    SIZE_T data_size;
    BYTE *data;
    char *filename_in;
    char *filename = ((void*)0);






    HeapFree(GetProcessHeap(), 0, *filename_out);
    *filename_out = ((void*)0);

    hr = filedata->lpVtbl->Lock(filedata, &data_size, (const void**)&data);
    if (FAILED(hr)) return hr;


    if (data_size < sizeof(filename_in))
    {
        WARN("truncated data (%lu bytes)\n", data_size);
        filedata->lpVtbl->Unlock(filedata);
        return E_FAIL;
    }
    filename_in = *(char **)data;

    filename = HeapAlloc(GetProcessHeap(), 0, strlen(filename_in) + 1);
    if (!filename) {
        filedata->lpVtbl->Unlock(filedata);
        return E_OUTOFMEMORY;
    }

    strcpy(filename, filename_in);
    *filename_out = filename;

    filedata->lpVtbl->Unlock(filedata);

    return D3D_OK;
}
