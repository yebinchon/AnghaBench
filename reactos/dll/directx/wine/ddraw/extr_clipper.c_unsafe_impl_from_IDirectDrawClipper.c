
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ddraw_clipper {int dummy; } ;
struct TYPE_4__ {int * lpVtbl; } ;
typedef TYPE_1__ IDirectDrawClipper ;


 int assert (int) ;
 int ddraw_clipper_vtbl ;
 struct ddraw_clipper* impl_from_IDirectDrawClipper (TYPE_1__*) ;

struct ddraw_clipper *unsafe_impl_from_IDirectDrawClipper(IDirectDrawClipper *iface)
{
    if (!iface)
        return ((void*)0);
    assert(iface->lpVtbl == &ddraw_clipper_vtbl);

    return impl_from_IDirectDrawClipper(iface);
}
