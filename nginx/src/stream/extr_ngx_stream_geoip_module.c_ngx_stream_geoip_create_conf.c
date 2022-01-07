
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void ngx_stream_geoip_conf_t ;
struct TYPE_5__ {void* data; int handler; } ;
typedef TYPE_1__ ngx_pool_cleanup_t ;
struct TYPE_6__ {int pool; } ;
typedef TYPE_2__ ngx_conf_t ;


 void* ngx_pcalloc (int ,int) ;
 TYPE_1__* ngx_pool_cleanup_add (int ,int ) ;
 int ngx_stream_geoip_cleanup ;

__attribute__((used)) static void *
ngx_stream_geoip_create_conf(ngx_conf_t *cf)
{
    ngx_pool_cleanup_t *cln;
    ngx_stream_geoip_conf_t *conf;

    conf = ngx_pcalloc(cf->pool, sizeof(ngx_stream_geoip_conf_t));
    if (conf == ((void*)0)) {
        return ((void*)0);
    }

    cln = ngx_pool_cleanup_add(cf->pool, 0);
    if (cln == ((void*)0)) {
        return ((void*)0);
    }

    cln->handler = ngx_stream_geoip_cleanup;
    cln->data = conf;

    return conf;
}
