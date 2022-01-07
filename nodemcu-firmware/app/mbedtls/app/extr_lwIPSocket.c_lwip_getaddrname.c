
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8_t ;
struct sockaddr_in {int sin_len; int sin_addr; int sin_port; int sin_family; } ;
typedef int sockaddr ;
typedef int socklen_t ;
typedef int sin ;
struct TYPE_3__ {int conn; } ;
typedef TYPE_1__ lwIP_sock ;
typedef int ip_addr_t ;


 int AF_INET ;
 int MEMCPY (int*,struct sockaddr_in*,int) ;
 TYPE_1__* get_socket (int) ;
 int htons (int ) ;
 int inet_addr_from_ipaddr (int *,int *) ;
 int lwIP_ASSERT (int*) ;
 int netconn_getaddr (int ,int *,int *,int ) ;
 int os_memset (struct sockaddr_in*,int ,int) ;

__attribute__((used)) static int
lwip_getaddrname(int s, struct sockaddr *name, socklen_t *namelen, u8_t local)
{
    lwIP_sock *sock = ((void*)0);
    struct sockaddr_in sin;
    ip_addr_t naddr;
    lwIP_ASSERT(name);
    lwIP_ASSERT(namelen);

    sock = get_socket(s);
    if (!sock)
    {
        return -1;
    }

    os_memset(&sin, 0, sizeof(sin));
    sin.sin_len = sizeof(sin);
    sin.sin_family = AF_INET;


    netconn_getaddr(sock->conn, &naddr, &sin.sin_port, local);
    sin.sin_port = htons(sin.sin_port);
    inet_addr_from_ipaddr(&sin.sin_addr, &naddr);

    if (*namelen > sizeof(sin))
    {
        *namelen = sizeof(sin);
    }

    MEMCPY(name, &sin, *namelen);

    return 0;
}
