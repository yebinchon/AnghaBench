
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_cws {int state; int dns_result; int remote_hostname_len; int dns; int remote_host; int ep; } ;
typedef int ipv4only ;


 int NN_CWS_STATE_RESOLVING ;
 int NN_IPV4ONLY ;
 int NN_SOL_SOCKET ;
 int nn_assert (int) ;
 char* nn_chunkref_data (int *) ;
 int nn_dns_start (int *,char*,int ,int,int *) ;
 int nn_ep_getopt (int ,int ,int ,int*,size_t*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void nn_cws_start_resolving (struct nn_cws *self)
{
    int ipv4only;
    size_t ipv4onlylen;
    char *host;


    ipv4onlylen = sizeof (ipv4only);
    nn_ep_getopt (self->ep, NN_SOL_SOCKET, NN_IPV4ONLY,
        &ipv4only, &ipv4onlylen);
    nn_assert (ipv4onlylen == sizeof (ipv4only));

    host = nn_chunkref_data (&self->remote_host);
    nn_assert (strlen (host) > 0);

    nn_dns_start (&self->dns, host, self->remote_hostname_len, ipv4only,
        &self->dns_result);

    self->state = NN_CWS_STATE_RESOLVING;
}
