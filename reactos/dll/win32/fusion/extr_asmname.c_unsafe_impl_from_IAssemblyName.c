
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
typedef int IAssemblyNameImpl ;
typedef TYPE_1__ IAssemblyName ;


 int AssemblyNameVtbl ;
 int assert (int) ;
 int * impl_from_IAssemblyName (TYPE_1__*) ;

__attribute__((used)) static inline IAssemblyNameImpl *unsafe_impl_from_IAssemblyName(IAssemblyName *iface)
{
    assert(iface->lpVtbl == &AssemblyNameVtbl);

    return impl_from_IAssemblyName(iface);
}
