
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ error; } ;
struct link_socket {TYPE_1__ stream_buf; scalar_t__ stream_reset; } ;


 int const ECONNRESET ;
 int const WSAECONNABORTED ;
 int const WSAECONNRESET ;
 scalar_t__ link_socket_connection_oriented (struct link_socket const*) ;
 int openvpn_errno () ;

__attribute__((used)) static inline bool
socket_connection_reset(const struct link_socket *sock, int status)
{
    if (link_socket_connection_oriented(sock))
    {
        if (sock->stream_reset || sock->stream_buf.error)
        {
            return 1;
        }
        else if (status < 0)
        {
            const int err = openvpn_errno();



            return err == ECONNRESET;

        }
    }
    return 0;
}
