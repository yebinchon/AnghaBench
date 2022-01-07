
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_3__ {int path; } ;
typedef int LPWSTR ;
typedef TYPE_1__ IAssemblyNameImpl ;
typedef int IAssemblyName ;
typedef int HRESULT ;


 int E_NOT_SUFFICIENT_BUFFER ;
 int S_OK ;
 int lstrcpyW (int ,int ) ;
 scalar_t__ lstrlenW (int ) ;
 TYPE_1__* unsafe_impl_from_IAssemblyName (int *) ;

HRESULT IAssemblyName_GetPath(IAssemblyName *iface, LPWSTR buf, ULONG *len)
{
    ULONG buffer_size = *len;
    IAssemblyNameImpl *name = unsafe_impl_from_IAssemblyName(iface);

    if (!name->path)
        return S_OK;

    if (!buf)
        buffer_size = 0;

    *len = lstrlenW(name->path) + 1;

    if (*len <= buffer_size)
        lstrcpyW(buf, name->path);
    else
        return E_NOT_SUFFICIENT_BUFFER;

    return S_OK;
}
