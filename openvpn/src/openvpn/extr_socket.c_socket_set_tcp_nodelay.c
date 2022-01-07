
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int state ;


 int D_OSBUF ;
 int IPPROTO_TCP ;
 int M_WARN ;
 int TCP_NODELAY ;
 int dmsg (int ,char*,int) ;
 int msg (int ,char*,int) ;
 scalar_t__ setsockopt (int,int ,int ,void*,int) ;

__attribute__((used)) static bool
socket_set_tcp_nodelay(int sd, int state)
{
    msg(M_WARN, "NOTE: setsockopt TCP_NODELAY=%d failed (No kernel support)", state);
    return 0;

}
