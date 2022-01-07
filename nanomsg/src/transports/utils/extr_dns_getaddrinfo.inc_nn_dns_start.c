
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_dns_result {char addr; size_t addrlen; int error; } ;
struct nn_dns {int fsm; struct nn_dns_result* result; } ;
struct addrinfo {char const* ai_addr; size_t ai_addrlen; int ai_socktype; int ai_flags; int ai_family; } ;
typedef int query ;
typedef int hostname ;


 int AF_INET ;
 int AF_INET6 ;
 int AI_V4MAPPED ;
 int EINVAL ;
 int NN_DNS_STATE_IDLE ;
 int NN_SOCKADDR_MAX ;
 int SOCK_STREAM ;
 int errnum_assert (int,int) ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;
 int memcpy (char*,char const*,size_t) ;
 int memset (struct addrinfo*,int ,int) ;
 int nn_assert (int) ;
 int nn_assert_state (struct nn_dns*,int ) ;
 int nn_fsm_start (int *) ;
 int nn_literal_resolve (char const*,size_t,int,char*,size_t*) ;

void nn_dns_start (struct nn_dns *self, const char *addr, size_t addrlen,
    int ipv4only, struct nn_dns_result *result)
{
    int rc;
    struct addrinfo query;
    struct addrinfo *reply;
    char hostname [NN_SOCKADDR_MAX];

    nn_assert_state (self, NN_DNS_STATE_IDLE);

    self->result = result;



    rc = nn_literal_resolve (addr, addrlen, ipv4only, &self->result->addr,
        &self->result->addrlen);
    if (rc == 0) {
        self->result->error = 0;
        nn_fsm_start (&self->fsm);
        return;
    }
    errnum_assert (rc == -EINVAL, -rc);


    memset (&query, 0, sizeof (query));
    if (ipv4only)
        query.ai_family = AF_INET;
    else {
        query.ai_family = AF_INET6;



    }
    nn_assert (sizeof (hostname) > addrlen);
    query.ai_socktype = SOCK_STREAM;
    memcpy (hostname, addr, addrlen);
    hostname [addrlen] = 0;


    self->result->error = getaddrinfo (hostname, ((void*)0), &query, &reply);
    if (self->result->error) {
        nn_fsm_start (&self->fsm);
        return;
    }




    self->result->error = 0;
    memcpy (&self->result->addr, reply->ai_addr, reply->ai_addrlen);
    self->result->addrlen = reply->ai_addrlen;
    freeaddrinfo (reply);

    nn_fsm_start (&self->fsm);
}
