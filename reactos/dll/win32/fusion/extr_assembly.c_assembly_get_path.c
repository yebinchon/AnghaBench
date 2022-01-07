
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int path; } ;
typedef int * LPWSTR ;
typedef int HRESULT ;
typedef TYPE_1__ ASSEMBLY ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int * heap_alloc (int) ;
 int lstrcpyW (int *,int ) ;
 int lstrlenW (int ) ;

HRESULT assembly_get_path(const ASSEMBLY *assembly, LPWSTR *path)
{
    WCHAR *cpy = heap_alloc((lstrlenW(assembly->path) + 1) * sizeof(WCHAR));
    *path = cpy;
    if (cpy)
        lstrcpyW(cpy, assembly->path);
    else
        return E_OUTOFMEMORY;

    return S_OK;
}
