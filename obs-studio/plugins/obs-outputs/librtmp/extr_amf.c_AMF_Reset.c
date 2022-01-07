
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int o_num; int * o_props; } ;
typedef TYPE_1__ AMFObject ;


 int AMFProp_Reset (int *) ;
 int free (int *) ;

void
AMF_Reset(AMFObject *obj)
{
    int n;
    for (n = 0; n < obj->o_num; n++)
    {
        AMFProp_Reset(&obj->o_props[n]);
    }
    free(obj->o_props);
    obj->o_props = ((void*)0);
    obj->o_num = 0;
}
