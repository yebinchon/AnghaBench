
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_17__ {int s6_addr; } ;
struct sockaddr_in6 {TYPE_6__ sin6_addr; } ;
struct TYPE_14__ {int s_addr; } ;
struct sockaddr_in {TYPE_3__ sin_addr; } ;
typedef scalar_t__ ngx_int_t ;
typedef int ngx_http_upstream_srv_conf_t ;
struct TYPE_18__ {int addrlen; int hash; int get_rr_peer; scalar_t__ tries; int * addr; int rrp; } ;
typedef TYPE_7__ ngx_http_upstream_ip_hash_peer_data_t ;
struct TYPE_19__ {TYPE_5__* connection; TYPE_2__* upstream; int pool; } ;
typedef TYPE_8__ ngx_http_request_t ;
struct TYPE_16__ {TYPE_4__* sockaddr; } ;
struct TYPE_15__ {int sa_family; } ;
struct TYPE_12__ {int get; int * data; } ;
struct TYPE_13__ {TYPE_1__ peer; } ;




 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 int ngx_http_upstream_get_ip_hash_peer ;
 int ngx_http_upstream_get_round_robin_peer ;
 scalar_t__ ngx_http_upstream_init_round_robin_peer (TYPE_8__*,int *) ;
 int * ngx_http_upstream_ip_hash_pseudo_addr ;
 TYPE_7__* ngx_palloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_init_ip_hash_peer(ngx_http_request_t *r,
    ngx_http_upstream_srv_conf_t *us)
{
    struct sockaddr_in *sin;



    ngx_http_upstream_ip_hash_peer_data_t *iphp;

    iphp = ngx_palloc(r->pool, sizeof(ngx_http_upstream_ip_hash_peer_data_t));
    if (iphp == ((void*)0)) {
        return NGX_ERROR;
    }

    r->upstream->peer.data = &iphp->rrp;

    if (ngx_http_upstream_init_round_robin_peer(r, us) != NGX_OK) {
        return NGX_ERROR;
    }

    r->upstream->peer.get = ngx_http_upstream_get_ip_hash_peer;

    switch (r->connection->sockaddr->sa_family) {

    case 129:
        sin = (struct sockaddr_in *) r->connection->sockaddr;
        iphp->addr = (u_char *) &sin->sin_addr.s_addr;
        iphp->addrlen = 3;
        break;
    default:
        iphp->addr = ngx_http_upstream_ip_hash_pseudo_addr;
        iphp->addrlen = 3;
    }

    iphp->hash = 89;
    iphp->tries = 0;
    iphp->get_rr_peer = ngx_http_upstream_get_round_robin_peer;

    return NGX_OK;
}
