
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_socket {int mark; void* sd; int socket_buffer_sizes; void* ctrl_sd; scalar_t__ socks_proxy; int sockflags; } ;
struct addrinfo {scalar_t__ ai_protocol; scalar_t__ ai_socktype; int ai_family; } ;


 int ASSERT (int ) ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 int SF_GETADDRINFO_DGRAM ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_STREAM ;
 int bind_local (struct link_socket*,int ) ;
 void* create_socket_tcp (struct addrinfo*) ;
 void* create_socket_udp (struct addrinfo*,int ) ;
 int socket_set_buffers (void*,int *) ;
 int socket_set_mark (void*,int ) ;

__attribute__((used)) static void
create_socket(struct link_socket *sock, struct addrinfo *addr)
{
    if (addr->ai_protocol == IPPROTO_UDP || addr->ai_socktype == SOCK_DGRAM)
    {
        sock->sd = create_socket_udp(addr, sock->sockflags);
        sock->sockflags |= SF_GETADDRINFO_DGRAM;



        if (sock->socks_proxy)
        {



            struct addrinfo addrinfo_tmp = *addr;
            addrinfo_tmp.ai_socktype = SOCK_STREAM;
            addrinfo_tmp.ai_protocol = IPPROTO_TCP;
            sock->ctrl_sd = create_socket_tcp(&addrinfo_tmp);
        }
    }
    else if (addr->ai_protocol == IPPROTO_TCP || addr->ai_socktype == SOCK_STREAM)
    {
        sock->sd = create_socket_tcp(addr);
    }
    else
    {
        ASSERT(0);
    }

    socket_set_buffers(sock->sd, &sock->socket_buffer_sizes);


    socket_set_mark(sock->sd, sock->mark);

    bind_local(sock, addr->ai_family);
}
