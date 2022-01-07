
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
typedef int ngx_http_upstream_srv_conf_t ;
struct TYPE_18__ {int * ranges; scalar_t__ two; } ;
typedef TYPE_5__ ngx_http_upstream_random_srv_conf_t ;
struct TYPE_17__ {TYPE_9__* peers; } ;
struct TYPE_19__ {TYPE_4__ rrp; scalar_t__ tries; TYPE_5__* conf; } ;
typedef TYPE_6__ ngx_http_upstream_random_peer_data_t ;
struct TYPE_20__ {TYPE_3__* upstream; int pool; TYPE_1__* connection; } ;
typedef TYPE_7__ ngx_http_request_t ;
struct TYPE_21__ {scalar_t__ shpool; } ;
struct TYPE_15__ {int get; TYPE_4__* data; } ;
struct TYPE_16__ {TYPE_2__ peer; } ;
struct TYPE_14__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 TYPE_5__* ngx_http_conf_upstream_srv_conf (int *,int ) ;
 int ngx_http_upstream_get_random2_peer ;
 int ngx_http_upstream_get_random_peer ;
 scalar_t__ ngx_http_upstream_init_round_robin_peer (TYPE_7__*,int *) ;
 int ngx_http_upstream_random_module ;
 int ngx_http_upstream_rr_peers_rlock (TYPE_9__*) ;
 int ngx_http_upstream_rr_peers_unlock (TYPE_9__*) ;
 scalar_t__ ngx_http_upstream_update_random (int *,int *) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 TYPE_6__* ngx_palloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_init_random_peer(ngx_http_request_t *r,
    ngx_http_upstream_srv_conf_t *us)
{
    ngx_http_upstream_random_srv_conf_t *rcf;
    ngx_http_upstream_random_peer_data_t *rp;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "init random peer");

    rcf = ngx_http_conf_upstream_srv_conf(us, ngx_http_upstream_random_module);

    rp = ngx_palloc(r->pool, sizeof(ngx_http_upstream_random_peer_data_t));
    if (rp == ((void*)0)) {
        return NGX_ERROR;
    }

    r->upstream->peer.data = &rp->rrp;

    if (ngx_http_upstream_init_round_robin_peer(r, us) != NGX_OK) {
        return NGX_ERROR;
    }

    if (rcf->two) {
        r->upstream->peer.get = ngx_http_upstream_get_random2_peer;

    } else {
        r->upstream->peer.get = ngx_http_upstream_get_random_peer;
    }

    rp->conf = rcf;
    rp->tries = 0;

    ngx_http_upstream_rr_peers_rlock(rp->rrp.peers);
    ngx_http_upstream_rr_peers_unlock(rp->rrp.peers);

    return NGX_OK;
}
