
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sb_socket; int * sb_ssl; } ;
typedef TYPE_1__ RTMPSockBuf ;


 scalar_t__ INVALID_SOCKET ;
 int TLS_close (int *) ;
 int TLS_shutdown (int *) ;
 int closesocket (scalar_t__) ;

int
RTMPSockBuf_Close(RTMPSockBuf *sb)
{
    if (sb->sb_socket != INVALID_SOCKET)
        return closesocket(sb->sb_socket);
    return 0;
}
