
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sb_socket; scalar_t__ sb_ssl; } ;
typedef TYPE_1__ RTMPSockBuf ;


 int MSG_NOSIGNAL ;
 int TLS_write (scalar_t__,char const*,int) ;
 int fwrite (char const*,int,int,int ) ;
 int netstackdump ;
 int send (int ,char const*,int,int ) ;

int
RTMPSockBuf_Send(RTMPSockBuf *sb, const char *buf, int len)
{
    int rc;
    {
        rc = send(sb->sb_socket, buf, len, MSG_NOSIGNAL);
    }
    return rc;
}
