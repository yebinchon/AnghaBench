
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SF_TCP_NODELAY ;
 int socket_set_tcp_nodelay (int,int) ;

__attribute__((used)) static bool
socket_set_flags(int sd, unsigned int sockflags)
{
    if (sockflags & SF_TCP_NODELAY)
    {
        return socket_set_tcp_nodelay(sd, 1);
    }
    else
    {
        return 1;
    }
}
