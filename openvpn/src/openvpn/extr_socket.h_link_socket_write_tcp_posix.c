
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_socket_actual {int dummy; } ;
struct link_socket {int sd; } ;
struct buffer {int dummy; } ;


 int BLEN (struct buffer*) ;
 int BPTR (struct buffer*) ;
 int MSG_NOSIGNAL ;
 size_t send (int ,int ,int ,int ) ;

__attribute__((used)) static inline size_t
link_socket_write_tcp_posix(struct link_socket *sock,
                            struct buffer *buf,
                            struct link_socket_actual *to)
{
    return send(sock->sd, BPTR(buf), BLEN(buf), MSG_NOSIGNAL);
}
