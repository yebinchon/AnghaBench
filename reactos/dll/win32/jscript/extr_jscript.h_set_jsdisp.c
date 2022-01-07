
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int disp; int * jsdisp; } ;
struct TYPE_5__ {int flags; TYPE_1__ u; } ;
typedef TYPE_2__ vdisp_t ;
typedef int jsdisp_t ;


 int IDispatch_AddRef (int ) ;
 int VDISP_DISPEX ;
 int VDISP_JSDISP ;

__attribute__((used)) static inline void set_jsdisp(vdisp_t *vdisp, jsdisp_t *jsdisp)
{
    vdisp->u.jsdisp = jsdisp;
    vdisp->flags = VDISP_JSDISP | VDISP_DISPEX;
    IDispatch_AddRef(vdisp->u.disp);
}
