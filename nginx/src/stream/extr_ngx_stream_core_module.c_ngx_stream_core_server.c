
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef size_t ngx_uint_t ;
struct TYPE_16__ {void* (* create_srv_conf ) (TYPE_7__*) ;} ;
typedef TYPE_3__ ngx_stream_module_t ;
struct TYPE_17__ {int line; int file_name; int listen; TYPE_6__* ctx; } ;
typedef TYPE_4__ ngx_stream_core_srv_conf_t ;
struct TYPE_18__ {int servers; } ;
typedef TYPE_5__ ngx_stream_core_main_conf_t ;
struct TYPE_19__ {TYPE_5__** main_conf; TYPE_4__** srv_conf; } ;
typedef TYPE_6__ ngx_stream_conf_ctx_t ;
struct TYPE_20__ {int log; int cmd_type; TYPE_6__* ctx; TYPE_2__* cycle; int pool; } ;
typedef TYPE_7__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_15__ {TYPE_1__** modules; } ;
struct TYPE_14__ {scalar_t__ type; size_t ctx_index; TYPE_3__* ctx; } ;
struct TYPE_13__ {size_t ctx_index; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_STREAM_MODULE ;
 int NGX_STREAM_SRV_CONF ;
 TYPE_4__** ngx_array_push (int *) ;
 char* ngx_conf_parse (TYPE_7__*,int *) ;
 int ngx_log_error (int ,int ,int ,char*,int ,int ) ;
 void* ngx_pcalloc (int ,int) ;
 TYPE_10__ ngx_stream_core_module ;
 int ngx_stream_max_module ;
 void* stub1 (TYPE_7__*) ;

__attribute__((used)) static char *
ngx_stream_core_server(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    char *rv;
    void *mconf;
    ngx_uint_t m;
    ngx_conf_t pcf;
    ngx_stream_module_t *module;
    ngx_stream_conf_ctx_t *ctx, *stream_ctx;
    ngx_stream_core_srv_conf_t *cscf, **cscfp;
    ngx_stream_core_main_conf_t *cmcf;

    ctx = ngx_pcalloc(cf->pool, sizeof(ngx_stream_conf_ctx_t));
    if (ctx == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    stream_ctx = cf->ctx;
    ctx->main_conf = stream_ctx->main_conf;



    ctx->srv_conf = ngx_pcalloc(cf->pool,
                                sizeof(void *) * ngx_stream_max_module);
    if (ctx->srv_conf == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    for (m = 0; cf->cycle->modules[m]; m++) {
        if (cf->cycle->modules[m]->type != NGX_STREAM_MODULE) {
            continue;
        }

        module = cf->cycle->modules[m]->ctx;

        if (module->create_srv_conf) {
            mconf = module->create_srv_conf(cf);
            if (mconf == ((void*)0)) {
                return NGX_CONF_ERROR;
            }

            ctx->srv_conf[cf->cycle->modules[m]->ctx_index] = mconf;
        }
    }



    cscf = ctx->srv_conf[ngx_stream_core_module.ctx_index];
    cscf->ctx = ctx;

    cmcf = ctx->main_conf[ngx_stream_core_module.ctx_index];

    cscfp = ngx_array_push(&cmcf->servers);
    if (cscfp == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    *cscfp = cscf;




    pcf = *cf;
    cf->ctx = ctx;
    cf->cmd_type = NGX_STREAM_SRV_CONF;

    rv = ngx_conf_parse(cf, ((void*)0));

    *cf = pcf;

    if (rv == NGX_CONF_OK && !cscf->listen) {
        ngx_log_error(NGX_LOG_EMERG, cf->log, 0,
                      "no \"listen\" is defined for server in %s:%ui",
                      cscf->file_name, cscf->line);
        return NGX_CONF_ERROR;
    }

    return rv;
}
