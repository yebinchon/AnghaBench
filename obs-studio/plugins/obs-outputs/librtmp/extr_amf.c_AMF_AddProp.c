
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int o_num; int * o_props; } ;
typedef int AMFObjectProperty ;
typedef TYPE_1__ AMFObject ;


 int memcpy (int *,int const*,int) ;
 int * realloc (int *,int) ;

void
AMF_AddProp(AMFObject *obj, const AMFObjectProperty *prop)
{
    if (!(obj->o_num & 0x0f))
        obj->o_props =
            realloc(obj->o_props, (obj->o_num + 16) * sizeof(AMFObjectProperty));
    memcpy(&obj->o_props[obj->o_num++], prop, sizeof(AMFObjectProperty));
}
