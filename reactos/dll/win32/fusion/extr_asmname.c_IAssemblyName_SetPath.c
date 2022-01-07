
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int path; } ;
typedef int LPCWSTR ;
typedef TYPE_1__ IAssemblyNameImpl ;
typedef int IAssemblyName ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int strdupW (int ) ;
 TYPE_1__* unsafe_impl_from_IAssemblyName (int *) ;

HRESULT IAssemblyName_SetPath(IAssemblyName *iface, LPCWSTR path)
{
    IAssemblyNameImpl *name = unsafe_impl_from_IAssemblyName(iface);

    name->path = strdupW(path);
    if (!name->path)
        return E_OUTOFMEMORY;

    return S_OK;
}
