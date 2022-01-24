#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct link_socket {int /*<<< orphan*/  mark; void* sd; int /*<<< orphan*/  socket_buffer_sizes; void* ctrl_sd; scalar_t__ socks_proxy; int /*<<< orphan*/  sockflags; } ;
struct addrinfo {scalar_t__ ai_protocol; scalar_t__ ai_socktype; int /*<<< orphan*/  ai_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 int /*<<< orphan*/  SF_GETADDRINFO_DGRAM ; 
 scalar_t__ SOCK_DGRAM ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC1 (struct link_socket*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct addrinfo*) ; 
 void* FUNC3 (struct addrinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct link_socket *sock, struct addrinfo *addr)
{
    if (addr->ai_protocol == IPPROTO_UDP || addr->ai_socktype == SOCK_DGRAM)
    {
        sock->sd = FUNC3(addr, sock->sockflags);
        sock->sockflags |= SF_GETADDRINFO_DGRAM;

        /* Assume that control socket and data socket to the socks proxy
         * are using the same IP family */
        if (sock->socks_proxy)
        {
            /* Construct a temporary addrinfo to create the socket,
             * currently resolve two remote addresses is not supported,
             * TODO: Rewrite the whole resolve_remote */
            struct addrinfo addrinfo_tmp = *addr;
            addrinfo_tmp.ai_socktype = SOCK_STREAM;
            addrinfo_tmp.ai_protocol = IPPROTO_TCP;
            sock->ctrl_sd = FUNC2(&addrinfo_tmp);
        }
    }
    else if (addr->ai_protocol == IPPROTO_TCP || addr->ai_socktype == SOCK_STREAM)
    {
        sock->sd = FUNC2(addr);
    }
    else
    {
        FUNC0(0);
    }
    /* set socket buffers based on --sndbuf and --rcvbuf options */
    FUNC4(sock->sd, &sock->socket_buffer_sizes);

    /* set socket to --mark packets with given value */
    FUNC5(sock->sd, sock->mark);

    FUNC1(sock, addr->ai_family);
}