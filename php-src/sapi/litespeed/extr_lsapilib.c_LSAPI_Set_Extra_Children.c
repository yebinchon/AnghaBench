
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m_iExtraChildren; } ;


 TYPE_1__* g_prefork_server ;

void LSAPI_Set_Extra_Children( int extraChildren )
{
    if (( g_prefork_server )&&( extraChildren >= 0 ))
        g_prefork_server->m_iExtraChildren = extraChildren;
}
