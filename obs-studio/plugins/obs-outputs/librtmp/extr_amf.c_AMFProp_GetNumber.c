
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double p_number; } ;
struct TYPE_5__ {TYPE_1__ p_vu; } ;
typedef TYPE_2__ AMFObjectProperty ;



double
AMFProp_GetNumber(AMFObjectProperty *prop)
{
    return prop->p_vu.p_number;
}
