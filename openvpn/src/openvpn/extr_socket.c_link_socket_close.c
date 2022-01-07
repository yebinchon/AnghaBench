
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_socket {int stream_buf_data; int stream_buf; void* ctrl_sd; int writes; int reads; void* sd; int listen_handle; int gremlin; } ;


 int D_LOW ;
 int GREMLIN_CONNECTION_FLOOD_LEVEL (int ) ;
 int M_ERRNO ;
 int M_WARN ;
 void* SOCKET_UNDEFINED ;
 int close_net_event_win32 (int *,void*,int ) ;
 int free (struct link_socket*) ;
 int free_buf (int *) ;
 int msg (int,char*) ;
 scalar_t__ openvpn_close_socket (void*) ;
 int overlapped_io_close (int *) ;
 scalar_t__ socket_defined (void*) ;
 int stream_buf_close (int *) ;

void
link_socket_close(struct link_socket *sock)
{
    if (sock)
    {



        const int gremlin = 0;


        if (socket_defined(sock->sd))
        {



            if (!gremlin)
            {
                msg(D_LOW, "TCP/UDP: Closing socket");
                if (openvpn_close_socket(sock->sd))
                {
                    msg(M_WARN | M_ERRNO, "TCP/UDP: Close Socket failed");
                }
            }
            sock->sd = SOCKET_UNDEFINED;







        }

        if (socket_defined(sock->ctrl_sd))
        {
            if (openvpn_close_socket(sock->ctrl_sd))
            {
                msg(M_WARN | M_ERRNO, "TCP/UDP: Close Socket (ctrl_sd) failed");
            }
            sock->ctrl_sd = SOCKET_UNDEFINED;
        }

        stream_buf_close(&sock->stream_buf);
        free_buf(&sock->stream_buf_data);
        if (!gremlin)
        {
            free(sock);
        }
    }
}
