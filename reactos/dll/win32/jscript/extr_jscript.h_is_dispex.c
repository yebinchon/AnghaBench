
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ vdisp_t ;
typedef int BOOL ;


 int VDISP_DISPEX ;

__attribute__((used)) static inline BOOL is_dispex(vdisp_t *vdisp)
{
    return (vdisp->flags & VDISP_DISPEX) != 0;
}
