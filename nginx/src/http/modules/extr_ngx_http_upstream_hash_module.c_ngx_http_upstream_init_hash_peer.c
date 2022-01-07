
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
typedef int ngx_http_upstream_srv_conf_t ;
struct TYPE_15__ {int key; } ;
typedef TYPE_4__ ngx_http_upstream_hash_srv_conf_t ;
struct TYPE_16__ {int get_rr_peer; scalar_t__ hash; scalar_t__ rehash; scalar_t__ tries; TYPE_4__* conf; int key; int rrp; } ;
typedef TYPE_5__ ngx_http_upstream_hash_peer_data_t ;
struct TYPE_17__ {TYPE_3__* connection; TYPE_2__* upstream; int pool; } ;
typedef TYPE_6__ ngx_http_request_t ;
struct TYPE_14__ {int log; } ;
struct TYPE_12__ {int get; int * data; } ;
struct TYPE_13__ {TYPE_1__ peer; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_complex_value (TYPE_6__*,int *,int *) ;
 TYPE_4__* ngx_http_conf_upstream_srv_conf (int *,int ) ;
 int ngx_http_upstream_get_hash_peer ;
 int ngx_http_upstream_get_round_robin_peer ;
 int ngx_http_upstream_hash_module ;
 scalar_t__ ngx_http_upstream_init_round_robin_peer (TYPE_6__*,int *) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int *) ;
 TYPE_5__* ngx_palloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_init_hash_peer(ngx_http_request_t *r,
    ngx_http_upstream_srv_conf_t *us)
{
    ngx_http_upstream_hash_srv_conf_t *hcf;
    ngx_http_upstream_hash_peer_data_t *hp;

    hp = ngx_palloc(r->pool, sizeof(ngx_http_upstream_hash_peer_data_t));
    if (hp == ((void*)0)) {
        return NGX_ERROR;
    }

    r->upstream->peer.data = &hp->rrp;

    if (ngx_http_upstream_init_round_robin_peer(r, us) != NGX_OK) {
        return NGX_ERROR;
    }

    r->upstream->peer.get = ngx_http_upstream_get_hash_peer;

    hcf = ngx_http_conf_upstream_srv_conf(us, ngx_http_upstream_hash_module);

    if (ngx_http_complex_value(r, &hcf->key, &hp->key) != NGX_OK) {
        return NGX_ERROR;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "upstream hash key:\"%V\"", &hp->key);

    hp->conf = hcf;
    hp->tries = 0;
    hp->rehash = 0;
    hp->hash = 0;
    hp->get_rr_peer = ngx_http_upstream_get_round_robin_peer;

    return NGX_OK;
}
