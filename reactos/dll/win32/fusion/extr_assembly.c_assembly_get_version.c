
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_9__ {TYPE_1__* tables; } ;
struct TYPE_8__ {char* MajorVersion; int RevisionNumber; int BuildNumber; int MinorVersion; } ;
struct TYPE_7__ {int offset; } ;
typedef int * LPWSTR ;
typedef int LONG ;
typedef int HRESULT ;
typedef TYPE_2__ ASSEMBLYTABLE ;
typedef TYPE_3__ ASSEMBLY ;


 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int S_OK ;
 size_t TableFromToken (int ) ;
 TYPE_2__* assembly_data_offset (TYPE_3__*,int) ;
 int * heap_alloc (int) ;
 int mdtAssembly ;
 int swprintf (int *,char const*,char*,int ,int ,int ) ;

HRESULT assembly_get_version(ASSEMBLY *assembly, LPWSTR *version)
{
    static const WCHAR format[] = {'%','u','.','%','u','.','%','u','.','%','u',0};

    ASSEMBLYTABLE *asmtbl;
    LONG offset;

    *version = ((void*)0);

    offset = assembly->tables[TableFromToken(mdtAssembly)].offset;
    if (offset == -1)
        return E_FAIL;

    asmtbl = assembly_data_offset(assembly, offset);
    if (!asmtbl)
        return E_FAIL;

    if (!(*version = heap_alloc(24 * sizeof(WCHAR))))
        return E_OUTOFMEMORY;

    swprintf(*version, format, asmtbl->MajorVersion, asmtbl->MinorVersion,
             asmtbl->BuildNumber, asmtbl->RevisionNumber);

    return S_OK;
}
