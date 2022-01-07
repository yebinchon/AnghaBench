
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int o_num; int * o_props; } ;
typedef TYPE_1__ AMFObject ;


 int AMFProp_Dump (int *) ;
 int RTMP_LOGDEBUG ;
 int RTMP_Log (int ,char*) ;

void
AMF_Dump(AMFObject *obj)
{
    int n;
    RTMP_Log(RTMP_LOGDEBUG, "(object begin)");
    for (n = 0; n < obj->o_num; n++)
    {
        AMFProp_Dump(&obj->o_props[n]);
    }
    RTMP_Log(RTMP_LOGDEBUG, "(object end)");
}
