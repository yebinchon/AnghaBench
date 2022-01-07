
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ p_type; } ;
typedef TYPE_1__ AMFObjectProperty ;


 scalar_t__ AMF_INVALID ;

int
AMFProp_IsValid(AMFObjectProperty *prop)
{
    return prop->p_type != AMF_INVALID;
}
