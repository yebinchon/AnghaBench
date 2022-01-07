
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m_iMaxIdleChildren; } ;


 TYPE_1__* g_prefork_server ;

void LSAPI_Set_Max_Idle_Children( int maxIdleChld )
{
    if (( g_prefork_server )&&( maxIdleChld > 0 ))
        g_prefork_server->m_iMaxIdleChildren = maxIdleChld;
}
