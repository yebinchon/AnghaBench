
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * jsdisp; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ vdisp_t ;
typedef int jsdisp_t ;


 scalar_t__ is_jsdisp (TYPE_2__*) ;

__attribute__((used)) static inline jsdisp_t *get_jsdisp(vdisp_t *vdisp)
{
    return is_jsdisp(vdisp) ? vdisp->u.jsdisp : ((void*)0);
}
