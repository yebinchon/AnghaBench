
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORD ;
typedef int **** WCHAR ;
struct TYPE_7__ {int stringsz; int blobsz; TYPE_1__* tables; } ;
struct TYPE_6__ {int offset; int rows; } ;
typedef int ******* LPWSTR ;
typedef int LONG ;
typedef int INT ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BYTE ;
typedef TYPE_2__ ASSEMBLY ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 size_t TableFromToken (int ) ;
 int * assembly_data_offset (TYPE_2__*,int) ;
 int ******* assembly_dup_str (TYPE_2__*,int) ;
 int ******** heap_alloc (int) ;
 int heap_free (int ******) ;
 int mdtFile ;

HRESULT assembly_get_external_files(ASSEMBLY *assembly, LPWSTR **files, DWORD *count)
{
    LONG offset;
    INT i, num_rows;
    WCHAR **ret;
    BYTE *ptr;
    DWORD idx;

    *count = 0;

    offset = assembly->tables[TableFromToken(mdtFile)].offset;
    if (offset == -1)
        return S_OK;

    ptr = assembly_data_offset(assembly, offset);
    if (!ptr)
        return S_OK;

    num_rows = assembly->tables[TableFromToken(mdtFile)].rows;
    if (num_rows <= 0)
        return S_OK;

    if (!(ret = heap_alloc(num_rows * sizeof(WCHAR *)))) return E_OUTOFMEMORY;

    for (i = 0; i < num_rows; i++)
    {
        ptr += sizeof(DWORD);
        if (assembly->stringsz == sizeof(DWORD))
            idx = *(DWORD *)ptr;
        else
            idx = *(WORD *)ptr;

        ret[i] = assembly_dup_str(assembly, idx);
        if (!ret[i])
        {
            for (; i >= 0; i--) heap_free(ret[i]);
            heap_free(ret);
            return E_OUTOFMEMORY;
        }
        ptr += assembly->stringsz;
        ptr += assembly->blobsz;
    }
    *count = num_rows;
    *files = ret;
    return S_OK;
}
