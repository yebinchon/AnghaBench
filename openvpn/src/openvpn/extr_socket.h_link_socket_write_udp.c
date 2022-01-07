
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_socket_actual {int dummy; } ;
struct link_socket {int dummy; } ;
struct buffer {int dummy; } ;


 size_t link_socket_write_udp_posix (struct link_socket*,struct buffer*,struct link_socket_actual*) ;
 size_t link_socket_write_win32 (struct link_socket*,struct buffer*,struct link_socket_actual*) ;

__attribute__((used)) static inline size_t
link_socket_write_udp(struct link_socket *sock,
                      struct buffer *buf,
                      struct link_socket_actual *to)
{



    return link_socket_write_udp_posix(sock, buf, to);

}
