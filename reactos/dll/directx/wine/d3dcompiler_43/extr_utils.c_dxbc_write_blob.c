
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dxbc {int count; TYPE_1__* sections; } ;
struct TYPE_2__ {int data_size; int tag; int data; } ;
typedef int ID3DBlob ;
typedef int HRESULT ;
typedef int DWORD ;


 int D3DCreateBlob (int,int **) ;
 scalar_t__ FAILED (int ) ;
 char* ID3D10Blob_GetBufferPointer (int *) ;
 int S_OK ;
 int TAG_DXBC ;
 int TRACE (char*,struct dxbc*,...) ;
 int WARN (char*) ;
 int memcpy (char*,int ,int) ;
 int write_dword (char**,int) ;
 int write_dword_unknown (char**,int) ;

HRESULT dxbc_write_blob(struct dxbc *dxbc, ID3DBlob **blob)
{
    DWORD size = 32, offset = size + 4 * dxbc->count;
    ID3DBlob *object;
    HRESULT hr;
    char *ptr;
    unsigned int i;

    TRACE("dxbc %p, blob %p.\n", dxbc, blob);

    for (i = 0; i < dxbc->count; ++i)
    {
        size += 12 + dxbc->sections[i].data_size;
    }

    hr = D3DCreateBlob(size, &object);
    if (FAILED(hr))
    {
        WARN("Failed to create blob\n");
        return hr;
    }

    ptr = ID3D10Blob_GetBufferPointer(object);

    write_dword(&ptr, TAG_DXBC);


    write_dword_unknown(&ptr, 0);
    write_dword_unknown(&ptr, 0);
    write_dword_unknown(&ptr, 0);
    write_dword_unknown(&ptr, 0);


    write_dword_unknown(&ptr, 1);


    write_dword(&ptr, size);


    write_dword(&ptr, dxbc->count);


    for (i = 0; i < dxbc->count; ++i)
    {
        write_dword(&ptr, offset);
        offset += 8 + dxbc->sections[i].data_size;
    }


    for (i = 0; i < dxbc->count; ++i)
    {
        write_dword(&ptr, dxbc->sections[i].tag);
        write_dword(&ptr, dxbc->sections[i].data_size);
        memcpy(ptr, dxbc->sections[i].data, dxbc->sections[i].data_size);
        ptr += dxbc->sections[i].data_size;
    }

    TRACE("Created ID3DBlob %p\n", object);

    *blob = object;

    return S_OK;
}
