
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m_iMaxReqProcessTime; } ;


 TYPE_1__* g_prefork_server ;

void LSAPI_Set_Max_Process_Time( int secs )
{
    if (( g_prefork_server )&&( secs > 0 ))
        g_prefork_server->m_iMaxReqProcessTime = secs;
}
