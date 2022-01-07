
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int preread_timeout; int preread_buffer_size; int tcp_nodelay; int proxy_protocol_timeout; int * error_log; int line; int file_name; int * handler; int * resolver; int resolver_timeout; } ;
typedef TYPE_2__ ngx_stream_core_srv_conf_t ;
struct TYPE_8__ {TYPE_1__* cycle; int log; } ;
typedef TYPE_3__ ngx_conf_t ;
struct TYPE_6__ {int new_log; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_EMERG ;
 int ngx_conf_merge_msec_value (int ,int ,int) ;
 int ngx_conf_merge_size_value (int ,int ,int) ;
 int ngx_conf_merge_value (int ,int ,int) ;
 int ngx_log_error (int ,int ,int ,char*,int ,int ) ;
 int * ngx_resolver_create (TYPE_3__*,int *,int ) ;

__attribute__((used)) static char *
ngx_stream_core_merge_srv_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_stream_core_srv_conf_t *prev = parent;
    ngx_stream_core_srv_conf_t *conf = child;

    ngx_conf_merge_msec_value(conf->resolver_timeout,
                              prev->resolver_timeout, 30000);

    if (conf->resolver == ((void*)0)) {

        if (prev->resolver == ((void*)0)) {






            prev->resolver = ngx_resolver_create(cf, ((void*)0), 0);
            if (prev->resolver == ((void*)0)) {
                return NGX_CONF_ERROR;
            }
        }

        conf->resolver = prev->resolver;
    }

    if (conf->handler == ((void*)0)) {
        ngx_log_error(NGX_LOG_EMERG, cf->log, 0,
                      "no handler for server in %s:%ui",
                      conf->file_name, conf->line);
        return NGX_CONF_ERROR;
    }

    if (conf->error_log == ((void*)0)) {
        if (prev->error_log) {
            conf->error_log = prev->error_log;
        } else {
            conf->error_log = &cf->cycle->new_log;
        }
    }

    ngx_conf_merge_msec_value(conf->proxy_protocol_timeout,
                              prev->proxy_protocol_timeout, 30000);

    ngx_conf_merge_value(conf->tcp_nodelay, prev->tcp_nodelay, 1);

    ngx_conf_merge_size_value(conf->preread_buffer_size,
                              prev->preread_buffer_size, 16384);

    ngx_conf_merge_msec_value(conf->preread_timeout,
                              prev->preread_timeout, 30000);

    return NGX_CONF_OK;
}
