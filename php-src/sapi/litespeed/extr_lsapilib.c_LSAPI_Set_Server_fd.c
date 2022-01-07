
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m_fd; } ;


 TYPE_1__* g_prefork_server ;

void LSAPI_Set_Server_fd( int fd )
{
    if( g_prefork_server )
        g_prefork_server->m_fd = fd;
}
