
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m_iMaxChildren; } ;


 TYPE_1__* g_prefork_server ;

void LSAPI_Set_Max_Children( int maxChildren )
{
    if ( g_prefork_server )
        g_prefork_server->m_iMaxChildren = maxChildren;
}
