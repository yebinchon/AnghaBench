
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IShellUIHelper2_iface; } ;
typedef TYPE_1__ ShellUIHelper ;
typedef TYPE_2__ IShellUIHelper2 ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int ShellUIHelper2Vtbl ;
 TYPE_1__* heap_alloc (int) ;

HRESULT create_shell_ui_helper(IShellUIHelper2 **_ret)
{
    ShellUIHelper *ret;

    ret = heap_alloc(sizeof(*ret));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IShellUIHelper2_iface.lpVtbl = &ShellUIHelper2Vtbl;
    ret->ref = 1;

    *_ret = &ret->IShellUIHelper2_iface;
    return S_OK;
}
