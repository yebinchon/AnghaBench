
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u_short ;
typedef void* u_char ;
struct TYPE_9__ {int* s6_addr; } ;
struct sockaddr_in6 {TYPE_1__ sin6_addr; } ;
struct TYPE_11__ {int s_addr; } ;
struct sockaddr_in {TYPE_3__ sin_addr; } ;
typedef int ngx_uint_t ;
typedef int ngx_resolver_t ;
typedef int ngx_resolver_qs_t ;
struct TYPE_12__ {void** query; scalar_t__ qlen; } ;
typedef TYPE_4__ ngx_resolver_node_t ;
struct TYPE_13__ {int flags_hi; int nqs_lo; scalar_t__ nar_lo; scalar_t__ nar_hi; scalar_t__ nns_lo; scalar_t__ nns_hi; scalar_t__ nan_lo; scalar_t__ nan_hi; scalar_t__ nqs_hi; scalar_t__ flags_lo; void* ident_lo; void* ident_hi; } ;
typedef TYPE_5__ ngx_resolver_hdr_t ;
struct TYPE_14__ {TYPE_2__* sockaddr; } ;
typedef TYPE_6__ ngx_resolver_addr_t ;
typedef size_t ngx_int_t ;
typedef size_t in_addr_t ;
struct TYPE_10__ {int sa_family; } ;



 size_t NGX_ERROR ;
 size_t NGX_OK ;
 void** ngx_cpymem (void**,char*,int) ;
 int ngx_random () ;
 void** ngx_resolver_alloc (int *,size_t) ;
 void** ngx_sprintf (void**,char*,size_t,...) ;
 size_t ntohl (int ) ;

__attribute__((used)) static ngx_int_t
ngx_resolver_create_addr_query(ngx_resolver_t *r, ngx_resolver_node_t *rn,
    ngx_resolver_addr_t *addr)
{
    u_char *p, *d;
    size_t len;
    in_addr_t inaddr;
    ngx_int_t n;
    ngx_uint_t ident;
    ngx_resolver_hdr_t *query;
    struct sockaddr_in *sin;




    switch (addr->sockaddr->sa_family) {
    default:
        len = sizeof(ngx_resolver_hdr_t)
              + sizeof(".255.255.255.255.in-addr.arpa.") - 1
              + sizeof(ngx_resolver_qs_t);
    }

    p = ngx_resolver_alloc(r, len);
    if (p == ((void*)0)) {
        return NGX_ERROR;
    }

    rn->query = p;
    query = (ngx_resolver_hdr_t *) p;

    ident = ngx_random();

    query->ident_hi = (u_char) ((ident >> 8) & 0xff);
    query->ident_lo = (u_char) (ident & 0xff);


    query->flags_hi = 1; query->flags_lo = 0;


    query->nqs_hi = 0; query->nqs_lo = 1;
    query->nan_hi = 0; query->nan_lo = 0;
    query->nns_hi = 0; query->nns_lo = 0;
    query->nar_hi = 0; query->nar_lo = 0;

    p += sizeof(ngx_resolver_hdr_t);

    switch (addr->sockaddr->sa_family) {
    default:

        sin = (struct sockaddr_in *) addr->sockaddr;
        inaddr = ntohl(sin->sin_addr.s_addr);

        for (n = 0; n < 32; n += 8) {
            d = ngx_sprintf(&p[1], "%ud", (inaddr >> n) & 0xff);
            *p = (u_char) (d - &p[1]);
            p = d;
        }

        p = ngx_cpymem(p, "\7in-addr\4arpa\0", 14);
    }


    p = ngx_cpymem(p, "\0\14\0\1", 4);

    rn->qlen = (u_short) (p - rn->query);

    return NGX_OK;
}
