
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_aval; } ;
struct TYPE_5__ {scalar_t__ p_type; TYPE_1__ p_vu; } ;
typedef int AVal ;
typedef TYPE_2__ AMFObjectProperty ;


 scalar_t__ AMF_STRING ;
 int AV_empty ;

void
AMFProp_GetString(AMFObjectProperty *prop, AVal *str)
{
    if (prop->p_type == AMF_STRING)
        *str = prop->p_vu.p_aval;
    else
        *str = AV_empty;
}
