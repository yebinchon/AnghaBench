
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_name; } ;
typedef int AVal ;
typedef TYPE_1__ AMFObjectProperty ;



void
AMFProp_SetName(AMFObjectProperty *prop, AVal *name)
{
    prop->p_name = *name;
}
