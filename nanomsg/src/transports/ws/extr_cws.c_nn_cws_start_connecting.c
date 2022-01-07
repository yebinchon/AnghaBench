
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr {int dummy; } ;
struct nn_cws {int ep; void* state; int usock; int retry; int remote_port; int nic; } ;
typedef int remote ;
typedef int local ;
typedef int ipv4only ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 void* NN_CWS_STATE_CONNECTING ;
 void* NN_CWS_STATE_WAITING ;
 int NN_IPV4ONLY ;
 int NN_RCVBUF ;
 int NN_SNDBUF ;
 int NN_SOL_SOCKET ;
 int NN_STAT_INPROGRESS_CONNECTIONS ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int SO_SNDBUF ;
 void* htons (int ) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 int nn_assert (int) ;
 int nn_backoff_start (int *) ;
 int nn_chunkref_data (int *) ;
 int nn_chunkref_size (int *) ;
 int nn_ep_getopt (int ,int ,int ,int*,size_t*) ;
 int nn_ep_stat_increment (int ,int ,int) ;
 int nn_iface_resolve (int ,int ,int,struct sockaddr_storage*,size_t*) ;
 scalar_t__ nn_slow (int) ;
 int nn_usock_bind (int *,struct sockaddr*,size_t) ;
 int nn_usock_connect (int *,struct sockaddr*,size_t) ;
 int nn_usock_setsockopt (int *,int ,int ,int*,int) ;
 int nn_usock_start (int *,scalar_t__,int ,int ) ;

__attribute__((used)) static void nn_cws_start_connecting (struct nn_cws *self,
    struct sockaddr_storage *ss, size_t sslen)
{
    int rc;
    struct sockaddr_storage remote;
    size_t remotelen;
    struct sockaddr_storage local;
    size_t locallen;
    int ipv4only;
    int val;
    size_t sz;

    memset (&remote, 0, sizeof (remote));
    memset (&local, 0, sizeof (local));


    sz = sizeof (ipv4only);
    nn_ep_getopt (self->ep, NN_SOL_SOCKET, NN_IPV4ONLY, &ipv4only, &sz);
    nn_assert (sz == sizeof (ipv4only));

    rc = nn_iface_resolve (nn_chunkref_data (&self->nic),
    nn_chunkref_size (&self->nic), ipv4only, &local, &locallen);

    if (nn_slow (rc < 0)) {
        nn_backoff_start (&self->retry);
        self->state = NN_CWS_STATE_WAITING;
        return;
    }


    remote = *ss;
    remotelen = sslen;
    if (remote.ss_family == AF_INET)
        ((struct sockaddr_in*) &remote)->sin_port = htons (self->remote_port);
    else if (remote.ss_family == AF_INET6)
        ((struct sockaddr_in6*) &remote)->sin6_port = htons (self->remote_port);
    else
        nn_assert (0);


    rc = nn_usock_start (&self->usock, remote.ss_family, SOCK_STREAM, 0);
    if (nn_slow (rc < 0)) {
        nn_backoff_start (&self->retry);
        self->state = NN_CWS_STATE_WAITING;
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


    rc = nn_usock_bind (&self->usock, (struct sockaddr*) &local, locallen);
    if (nn_slow (rc != 0)) {
        nn_backoff_start (&self->retry);
        self->state = NN_CWS_STATE_WAITING;
        return;
    }


    nn_usock_connect (&self->usock, (struct sockaddr*) &remote, remotelen);
    self->state = NN_CWS_STATE_CONNECTING;
    nn_ep_stat_increment (self->ep, NN_STAT_INPROGRESS_CONNECTIONS, 1);
}
