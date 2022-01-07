
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IDispatchEx_iface; } ;
typedef TYPE_1__ jsdisp_t ;
typedef int IDispatch ;



__attribute__((used)) static inline IDispatch *to_disp(jsdisp_t *jsdisp)
{
    return (IDispatch*)&jsdisp->IDispatchEx_iface;
}
