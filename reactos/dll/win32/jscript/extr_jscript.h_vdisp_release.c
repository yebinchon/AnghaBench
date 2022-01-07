
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int disp; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef TYPE_2__ vdisp_t ;


 int IDispatch_Release (int ) ;

__attribute__((used)) static inline void vdisp_release(vdisp_t *vdisp)
{
    IDispatch_Release(vdisp->u.disp);
}
