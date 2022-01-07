
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_7__ {int stringsz; scalar_t__ blobsz; TYPE_1__* tables; } ;
struct TYPE_6__ {int offset; } ;
typedef int LPWSTR ;
typedef int LONG ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BYTE ;
typedef TYPE_2__ ASSEMBLY ;


 int ASSEMBLYTABLE ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 scalar_t__ FIELD_OFFSET (int ,int ) ;
 int PublicKey ;
 int S_OK ;
 size_t TableFromToken (int ) ;
 int * assembly_data_offset (TYPE_2__*,int) ;
 int assembly_dup_str (TYPE_2__*,int ) ;
 int mdtAssembly ;

HRESULT assembly_get_name(ASSEMBLY *assembly, LPWSTR *name)
{
    BYTE *ptr;
    LONG offset;
    DWORD stridx;

    offset = assembly->tables[TableFromToken(mdtAssembly)].offset;
    if (offset == -1)
        return E_FAIL;

    ptr = assembly_data_offset(assembly, offset);
    if (!ptr)
        return E_FAIL;

    ptr += FIELD_OFFSET(ASSEMBLYTABLE, PublicKey) + assembly->blobsz;
    if (assembly->stringsz == sizeof(DWORD))
        stridx = *(DWORD *)ptr;
    else
        stridx = *(WORD *)ptr;

    *name = assembly_dup_str(assembly, stridx);
    if (!*name)
        return E_OUTOFMEMORY;

    return S_OK;
}
