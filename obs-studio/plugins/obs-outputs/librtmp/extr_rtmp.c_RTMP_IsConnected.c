
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sb_socket; } ;
struct TYPE_5__ {TYPE_1__ m_sb; } ;
typedef TYPE_2__ RTMP ;


 scalar_t__ INVALID_SOCKET ;

int
RTMP_IsConnected(RTMP *r)
{
    return r->m_sb.sb_socket != INVALID_SOCKET;
}
