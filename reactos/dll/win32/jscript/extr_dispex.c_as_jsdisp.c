
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jsdisp_t ;
struct TYPE_3__ {int * lpVtbl; } ;
typedef int IDispatchVtbl ;
typedef int IDispatchEx ;
typedef TYPE_1__ IDispatch ;


 int DispatchExVtbl ;
 int assert (int) ;
 int * impl_from_IDispatchEx (int *) ;

jsdisp_t *as_jsdisp(IDispatch *disp)
{
    assert(disp->lpVtbl == (IDispatchVtbl*)&DispatchExVtbl);
    return impl_from_IDispatchEx((IDispatchEx*)disp);
}
