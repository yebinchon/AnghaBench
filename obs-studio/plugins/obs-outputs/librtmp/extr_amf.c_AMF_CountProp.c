
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int o_num; } ;
typedef TYPE_1__ AMFObject ;



int
AMF_CountProp(AMFObject *obj)
{
    return obj->o_num;
}
