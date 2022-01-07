
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jsdisp_t ;
struct TYPE_3__ {int const* lpVtbl; } ;
typedef int IDispatchVtbl ;
typedef int IDispatchEx ;
typedef TYPE_1__ IDispatch ;


 int DispatchExVtbl ;
 int impl_from_IDispatchEx (int *) ;
 int * jsdisp_addref (int ) ;

jsdisp_t *iface_to_jsdisp(IDispatch *iface)
{
    return iface->lpVtbl == (const IDispatchVtbl*)&DispatchExVtbl
        ? jsdisp_addref( impl_from_IDispatchEx((IDispatchEx*)iface))
        : ((void*)0);
}
