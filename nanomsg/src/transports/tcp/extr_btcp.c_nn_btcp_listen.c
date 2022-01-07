
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct sockaddr_storage {int ss_family; } ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr {int dummy; } ;
struct nn_btcp {int usock; int ep; } ;
typedef int ss ;
typedef int ipv4only ;




 int EINVAL ;
 int NN_BTCP_BACKLOG ;
 int NN_IPV4ONLY ;
 int NN_SOL_SOCKET ;
 int SOCK_STREAM ;
 void* htons (scalar_t__) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 int nn_assert (int) ;
 int nn_btcp_start_accepting (struct nn_btcp*) ;
 char* nn_ep_getaddr (int ) ;
 int nn_ep_getopt (int ,int ,int ,int*,size_t*) ;
 int nn_iface_resolve (char const*,int,int,struct sockaddr_storage*,size_t*) ;
 int nn_port_resolve (char const*,int) ;
 int nn_usock_bind (int *,struct sockaddr*,size_t) ;
 int nn_usock_listen (int *,int ) ;
 int nn_usock_start (int *,int,int ,int ) ;
 int nn_usock_stop (int *) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int nn_btcp_listen (struct nn_btcp *self)
{
    int rc;
    struct sockaddr_storage ss;
    size_t sslen;
    int ipv4only;
    size_t ipv4onlylen;
    const char *addr;
    const char *end;
    const char *pos;
    uint16_t port;


    addr = nn_ep_getaddr (self->ep);
    memset (&ss, 0, sizeof (ss));


    end = addr + strlen (addr);
    pos = strrchr (addr, ':');
    if (pos == ((void*)0)) {
        return -EINVAL;
    }
    ++pos;
    rc = nn_port_resolve (pos, end - pos);
    if (rc <= 0)
        return rc;
    port = (uint16_t) rc;


    ipv4onlylen = sizeof (ipv4only);
    nn_ep_getopt (self->ep, NN_SOL_SOCKET, NN_IPV4ONLY,
        &ipv4only, &ipv4onlylen);
    nn_assert (ipv4onlylen == sizeof (ipv4only));
    rc = nn_iface_resolve (addr, pos - addr - 1, ipv4only, &ss, &sslen);
    if (rc < 0) {
        return rc;
    }


    switch (ss.ss_family) {
    case 129:
        ((struct sockaddr_in*) &ss)->sin_port = htons (port);
        sslen = sizeof (struct sockaddr_in);
        break;
    case 128:
        ((struct sockaddr_in6*) &ss)->sin6_port = htons (port);
        sslen = sizeof (struct sockaddr_in6);
        break;
    default:
        nn_assert (0);
    }


    rc = nn_usock_start (&self->usock, ss.ss_family, SOCK_STREAM, 0);
    if (rc < 0) {
        return rc;
    }

    rc = nn_usock_bind (&self->usock, (struct sockaddr*) &ss, (size_t) sslen);
    if (rc < 0) {
       nn_usock_stop (&self->usock);
       return rc;
    }

    rc = nn_usock_listen (&self->usock, NN_BTCP_BACKLOG);
    if (rc < 0) {
        nn_usock_stop (&self->usock);
        return rc;
    }
    nn_btcp_start_accepting(self);

    return 0;
}
