
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int conn; } ;
typedef TYPE_1__ lwIP_sock ;




 int LWIP_DEBUGF (int ,char*) ;
 int O_NONBLOCK ;
 int SOCKETS_DEBUG ;
 TYPE_1__* get_socket (int) ;
 int netconn_is_nonblocking (int ) ;
 int netconn_set_nonblocking (int ,int) ;

int lwip_fcntl(int s, int cmd, int val)
{
    lwIP_sock *sock = get_socket(s);
    int ret = -1;

    if (!sock || !sock->conn)
    {
        return -1;
    }

    switch (cmd)
    {
        case 129:
            ret = netconn_is_nonblocking(sock->conn) ? O_NONBLOCK : 0;
            break;
        case 128:
            if ((val & ~O_NONBLOCK) == 0)
            {

                netconn_set_nonblocking(sock->conn, val & O_NONBLOCK);
                ret = 0;
            }
            break;
        default:
            LWIP_DEBUGF(SOCKETS_DEBUG, ("lwip_fcntl(%d, UNIMPL: %d, %d)\n", s, cmd, val));
            break;
    }
    return ret;
}
