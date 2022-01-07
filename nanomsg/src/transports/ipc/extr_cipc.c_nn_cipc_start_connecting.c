
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int val ;
struct sockaddr_un {int sun_path; } ;
struct sockaddr_storage {int ss_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int sec_attr; int outbuffersz; int inbuffersz; } ;
struct nn_cipc {int ep; int state; TYPE_1__ usock; int retry; } ;
typedef int ss ;


 int AF_UNIX ;
 int NN_CIPC_STATE_CONNECTING ;
 int NN_CIPC_STATE_WAITING ;
 int NN_IPC ;
 int NN_IPC_INBUFSZ ;
 int NN_IPC_OUTBUFSZ ;
 int NN_IPC_SEC_ATTR ;
 int NN_RCVBUF ;
 int NN_SNDBUF ;
 int NN_SOL_SOCKET ;
 int NN_STAT_INPROGRESS_CONNECTIONS ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int SO_SNDBUF ;
 int memset (struct sockaddr_storage*,int ,int) ;
 int nn_assert (int) ;
 int nn_backoff_start (int *) ;
 char* nn_ep_getaddr (int ) ;
 int nn_ep_getopt (int ,int ,int ,int*,size_t*) ;
 int nn_ep_stat_increment (int ,int ,int) ;
 scalar_t__ nn_slow (int) ;
 int nn_usock_connect (TYPE_1__*,struct sockaddr*,int) ;
 int nn_usock_setsockopt (TYPE_1__*,int ,int ,int*,int) ;
 int nn_usock_start (TYPE_1__*,int ,int ,int ) ;
 int strlen (char const*) ;
 int strncpy (int ,char const*,int) ;

__attribute__((used)) static void nn_cipc_start_connecting (struct nn_cipc *self)
{
    int rc;
    struct sockaddr_storage ss;
    struct sockaddr_un *un;
    const char *addr;
    int val;
    size_t sz;


    rc = nn_usock_start (&self->usock, AF_UNIX, SOCK_STREAM, 0);
    if (nn_slow (rc < 0)) {
        nn_backoff_start (&self->retry);
        self->state = NN_CIPC_STATE_WAITING;
        return;
    }


    sz = sizeof (val);
    nn_ep_getopt (self->ep, NN_SOL_SOCKET, NN_SNDBUF, &val, &sz);
    nn_assert (sz == sizeof (val));
    nn_usock_setsockopt (&self->usock, SOL_SOCKET, SO_SNDBUF,
        &val, sizeof (val));
    sz = sizeof (val);
    nn_ep_getopt (self->ep, NN_SOL_SOCKET, NN_RCVBUF, &val, &sz);
    nn_assert (sz == sizeof (val));
    nn_usock_setsockopt (&self->usock, SOL_SOCKET, SO_RCVBUF,
        &val, sizeof (val));


    addr = nn_ep_getaddr (self->ep);
    memset (&ss, 0, sizeof (ss));
    un = (struct sockaddr_un*) &ss;
    nn_assert (strlen (addr) < sizeof (un->sun_path));
    ss.ss_family = AF_UNIX;
    strncpy (un->sun_path, addr, sizeof (un->sun_path));
    nn_usock_connect (&self->usock, (struct sockaddr*) &ss,
        sizeof (struct sockaddr_un));
    self->state = NN_CIPC_STATE_CONNECTING;

    nn_ep_stat_increment (self->ep, NN_STAT_INPROGRESS_CONNECTIONS, 1);
}
