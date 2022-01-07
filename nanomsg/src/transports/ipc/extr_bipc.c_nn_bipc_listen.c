
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; } ;
struct sockaddr_storage {int ss_family; } ;
struct sockaddr {int dummy; } ;
struct nn_bipc {int usock; int ep; } ;
typedef int ss ;


 int AF_UNIX ;
 scalar_t__ ECONNREFUSED ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOENT ;
 int F_SETFL ;
 int NN_BIPC_BACKLOG ;
 int O_NONBLOCK ;
 int SOCK_STREAM ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 scalar_t__ errno ;
 int errno_assert (int) ;
 int fcntl (int,int ,int ) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 int nn_assert (int) ;
 int nn_bipc_start_accepting (struct nn_bipc*) ;
 char* nn_ep_getaddr (int ) ;
 int nn_usock_bind (int *,struct sockaddr*,int) ;
 int nn_usock_listen (int *,int ) ;
 int nn_usock_start (int *,int ,int ,int ) ;
 int nn_usock_stop (int *) ;
 int socket (int ,int ,int ) ;
 int strlen (char const*) ;
 int strncpy (int ,char const*,int) ;
 int unlink (char const*) ;

__attribute__((used)) static int nn_bipc_listen (struct nn_bipc *self)
{
    int rc;
    struct sockaddr_storage ss;
    struct sockaddr_un *un;
    const char *addr;





    addr = nn_ep_getaddr (self->ep);
    memset (&ss, 0, sizeof (ss));
    un = (struct sockaddr_un*) &ss;
    nn_assert (strlen (addr) < sizeof (un->sun_path));
    ss.ss_family = AF_UNIX;
    strncpy (un->sun_path, addr, sizeof (un->sun_path));
    rc = nn_usock_start (&self->usock, AF_UNIX, SOCK_STREAM, 0);
    if (rc < 0) {
        return rc;
    }

    rc = nn_usock_bind (&self->usock,
        (struct sockaddr*) &ss, sizeof (struct sockaddr_un));
    if (rc < 0) {
        nn_usock_stop (&self->usock);
        return rc;
    }

    rc = nn_usock_listen (&self->usock, NN_BIPC_BACKLOG);
    if (rc < 0) {
        nn_usock_stop (&self->usock);
        return rc;
    }
    nn_bipc_start_accepting (self);

    return 0;
}
