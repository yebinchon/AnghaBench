
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_pcb {int dummy; } ;
typedef int lwIP_netconn ;
typedef int err_t ;


 int ERR_OK ;
 int lwIP_ASSERT (int *) ;

__attribute__((used)) static err_t poll_tcp(void *arg, struct tcp_pcb *pcb)
{
    lwIP_netconn *conn = arg;
    lwIP_ASSERT(conn);

    return ERR_OK;
}
