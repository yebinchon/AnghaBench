
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_socket {int dummy; } ;


 scalar_t__ link_socket_connection_oriented (struct link_socket*) ;
 int stream_buf_read_setup_dowork (struct link_socket*) ;

__attribute__((used)) static inline bool
stream_buf_read_setup(struct link_socket *sock)
{
    if (link_socket_connection_oriented(sock))
    {
        return stream_buf_read_setup_dowork(sock);
    }
    else
    {
        return 1;
    }
}
