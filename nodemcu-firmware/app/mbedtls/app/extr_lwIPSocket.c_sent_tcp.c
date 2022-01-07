
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16_t ;
struct tcp_pcb {int dummy; } ;
struct TYPE_4__ {int state; } ;
typedef TYPE_1__ lwIP_netconn ;
typedef int err_t ;


 int ERR_OK ;
 int NETCONN_EVENT_SEND ;
 int NETCONN_STATE_ESTABLISHED ;
 int find_socket (TYPE_1__*) ;
 int lwIP_ASSERT (TYPE_1__*) ;
 int lwIP_EVENT_THREAD (int ,int ,int ) ;

__attribute__((used)) static err_t sent_tcp(void *arg, struct tcp_pcb *pcb, u16_t len)
{
    lwIP_netconn *conn = arg;
    lwIP_ASSERT(conn);
    conn->state = NETCONN_STATE_ESTABLISHED;
 lwIP_EVENT_THREAD(find_socket(conn), NETCONN_EVENT_SEND, len);
    return ERR_OK;
}
