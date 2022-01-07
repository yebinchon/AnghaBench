
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_rtmp_relay_ctx_t ;
struct TYPE_4__ {int nbuckets; int pull_reconnect; int push_reconnect; int buflen; int session_relay; int ctx; } ;
typedef TYPE_1__ ngx_rtmp_relay_app_conf_t ;
struct TYPE_5__ {int pool; } ;
typedef TYPE_2__ ngx_conf_t ;


 char* NGX_CONF_OK ;
 int ngx_conf_merge_msec_value (int ,int ,int) ;
 int ngx_conf_merge_value (int ,int ,int ) ;
 int ngx_pcalloc (int ,int) ;

__attribute__((used)) static char *
ngx_rtmp_relay_merge_app_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_rtmp_relay_app_conf_t *prev = parent;
    ngx_rtmp_relay_app_conf_t *conf = child;

    conf->ctx = ngx_pcalloc(cf->pool, sizeof(ngx_rtmp_relay_ctx_t *)
            * conf->nbuckets);

    ngx_conf_merge_value(conf->session_relay, prev->session_relay, 0);
    ngx_conf_merge_msec_value(conf->buflen, prev->buflen, 5000);
    ngx_conf_merge_msec_value(conf->push_reconnect, prev->push_reconnect,
            3000);
    ngx_conf_merge_msec_value(conf->pull_reconnect, prev->pull_reconnect,
            3000);

    return NGX_CONF_OK;
}
