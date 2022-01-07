
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int ranges; scalar_t__ tree6; scalar_t__ tree; } ;
typedef TYPE_2__ ngx_stream_geo_conf_ctx_t ;
struct TYPE_18__ {int data; } ;
typedef TYPE_3__ ngx_str_t ;
struct TYPE_19__ {int pool; TYPE_1__* args; TYPE_2__* ctx; } ;
typedef TYPE_4__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_16__ {int nelts; TYPE_3__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_EMERG ;
 int ngx_conf_log_error (int ,TYPE_4__*,int ,char*) ;
 int ngx_reset_pool (int ) ;
 scalar_t__ ngx_strcmp (int ,char*) ;
 char* ngx_stream_geo_cidr (TYPE_4__*,TYPE_2__*,TYPE_3__*) ;
 char* ngx_stream_geo_include (TYPE_4__*,TYPE_2__*,TYPE_3__*) ;
 char* ngx_stream_geo_range (TYPE_4__*,TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static char *
ngx_stream_geo(ngx_conf_t *cf, ngx_command_t *dummy, void *conf)
{
    char *rv;
    ngx_str_t *value;
    ngx_stream_geo_conf_ctx_t *ctx;

    ctx = cf->ctx;

    value = cf->args->elts;

    if (cf->args->nelts == 1) {

        if (ngx_strcmp(value[0].data, "ranges") == 0) {

            if (ctx->tree



               )
            {
                ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                                   "the \"ranges\" directive must be "
                                   "the first directive inside \"geo\" block");
                goto failed;
            }

            ctx->ranges = 1;

            rv = NGX_CONF_OK;

            goto done;
        }
    }

    if (cf->args->nelts != 2) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "invalid number of the geo parameters");
        goto failed;
    }

    if (ngx_strcmp(value[0].data, "include") == 0) {

        rv = ngx_stream_geo_include(cf, ctx, &value[1]);

        goto done;
    }

    if (ctx->ranges) {
        rv = ngx_stream_geo_range(cf, ctx, value);

    } else {
        rv = ngx_stream_geo_cidr(cf, ctx, value);
    }

done:

    ngx_reset_pool(cf->pool);

    return rv;

failed:

    ngx_reset_pool(cf->pool);

    return NGX_CONF_ERROR;
}
