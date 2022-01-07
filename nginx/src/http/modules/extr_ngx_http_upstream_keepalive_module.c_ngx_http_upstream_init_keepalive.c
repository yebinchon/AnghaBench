
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_13__ {int init; } ;
struct TYPE_14__ {TYPE_1__ peer; } ;
typedef TYPE_2__ ngx_http_upstream_srv_conf_t ;
struct TYPE_15__ {scalar_t__ (* original_init_upstream ) (TYPE_5__*,TYPE_2__*) ;int max_cached; int free; int cache; int original_init_peer; int requests; int timeout; } ;
typedef TYPE_3__ ngx_http_upstream_keepalive_srv_conf_t ;
struct TYPE_16__ {TYPE_3__* conf; int queue; } ;
typedef TYPE_4__ ngx_http_upstream_keepalive_cache_t ;
struct TYPE_17__ {int pool; int log; } ;
typedef TYPE_5__ ngx_conf_t ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 int ngx_conf_init_msec_value (int ,int) ;
 int ngx_conf_init_uint_value (int ,int) ;
 TYPE_3__* ngx_http_conf_upstream_srv_conf (TYPE_2__*,int ) ;
 int ngx_http_upstream_init_keepalive_peer ;
 int ngx_http_upstream_keepalive_module ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 TYPE_4__* ngx_pcalloc (int ,int) ;
 int ngx_queue_init (int *) ;
 int ngx_queue_insert_head (int *,int *) ;
 scalar_t__ stub1 (TYPE_5__*,TYPE_2__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_init_keepalive(ngx_conf_t *cf,
    ngx_http_upstream_srv_conf_t *us)
{
    ngx_uint_t i;
    ngx_http_upstream_keepalive_srv_conf_t *kcf;
    ngx_http_upstream_keepalive_cache_t *cached;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, cf->log, 0,
                   "init keepalive");

    kcf = ngx_http_conf_upstream_srv_conf(us,
                                          ngx_http_upstream_keepalive_module);

    ngx_conf_init_msec_value(kcf->timeout, 60000);
    ngx_conf_init_uint_value(kcf->requests, 100);

    if (kcf->original_init_upstream(cf, us) != NGX_OK) {
        return NGX_ERROR;
    }

    kcf->original_init_peer = us->peer.init;

    us->peer.init = ngx_http_upstream_init_keepalive_peer;



    cached = ngx_pcalloc(cf->pool,
                sizeof(ngx_http_upstream_keepalive_cache_t) * kcf->max_cached);
    if (cached == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_queue_init(&kcf->cache);
    ngx_queue_init(&kcf->free);

    for (i = 0; i < kcf->max_cached; i++) {
        ngx_queue_insert_head(&kcf->free, &cached[i].queue);
        cached[i].conf = kcf;
    }

    return NGX_OK;
}
