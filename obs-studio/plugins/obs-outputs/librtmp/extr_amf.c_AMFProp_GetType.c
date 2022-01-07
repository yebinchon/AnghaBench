
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_type; } ;
typedef TYPE_1__ AMFObjectProperty ;
typedef int AMFDataType ;



AMFDataType
AMFProp_GetType(AMFObjectProperty *prop)
{
    return prop->p_type;
}
