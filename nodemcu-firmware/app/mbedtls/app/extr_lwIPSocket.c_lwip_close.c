
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* conn; } ;
typedef TYPE_1__ lwIP_sock ;
struct TYPE_10__ {scalar_t__ state; TYPE_2__* tcp; } ;
struct TYPE_9__ {scalar_t__ state; } ;


 int ERR_OK ;
 scalar_t__ LISTEN ;
 scalar_t__ NETCONN_STATE_ERROR ;
 int free_netconn (TYPE_4__*) ;
 int free_socket (TYPE_1__*) ;
 TYPE_1__* get_socket (int) ;
 int * recv_tcp ;
 int remove_tcp (TYPE_4__*) ;
 int tcp_close (TYPE_2__*) ;
 int tcp_recv (TYPE_2__*,int *) ;

int lwip_close(int s)
{
    lwIP_sock *sock = ((void*)0);
    int err = 0;

    sock = get_socket(s);
    if (!sock)
    {
        return -1;
    }




    if (sock->conn->tcp->state != LISTEN)
    {
        if (sock->conn->state != NETCONN_STATE_ERROR){
            tcp_recv(sock->conn->tcp, ((void*)0));
            err = tcp_close(sock->conn->tcp);

            if (err != ERR_OK)
            {

                tcp_recv(sock->conn->tcp, recv_tcp);
                return -1;
            }
        }

        remove_tcp(sock->conn);
    } else {
        tcp_close(sock->conn->tcp);
    }
    free_netconn(sock->conn);
    free_socket(sock);
    return ERR_OK;
}
