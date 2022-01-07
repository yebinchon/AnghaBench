
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_object; } ;
struct TYPE_5__ {scalar_t__ p_type; TYPE_1__ p_vu; } ;
typedef TYPE_2__ AMFObjectProperty ;
typedef int AMFObject ;


 int AMFObj_Invalid ;
 scalar_t__ AMF_OBJECT ;

void
AMFProp_GetObject(AMFObjectProperty *prop, AMFObject *obj)
{
    if (prop->p_type == AMF_OBJECT)
        *obj = prop->p_vu.p_object;
    else
        *obj = AMFObj_Invalid;
}
