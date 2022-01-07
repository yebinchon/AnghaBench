
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_12__ ;


typedef int ngx_str_t ;
struct TYPE_21__ {int id; int rec; struct TYPE_21__** rec_conf; int applications; struct TYPE_21__** app_conf; } ;
typedef TYPE_3__ ngx_rtmp_record_app_conf_t ;
struct TYPE_22__ {TYPE_3__* (* create_app_conf ) (TYPE_8__*) ;} ;
typedef TYPE_4__ ngx_rtmp_module_t ;
typedef TYPE_3__ ngx_rtmp_core_app_conf_t ;
struct TYPE_23__ {TYPE_3__** app_conf; int srv_conf; int main_conf; } ;
typedef TYPE_6__ ngx_rtmp_conf_ctx_t ;
struct TYPE_24__ {scalar_t__ type; size_t ctx_index; TYPE_4__* ctx; } ;
typedef TYPE_7__ ngx_module_t ;
typedef size_t ngx_int_t ;
struct TYPE_25__ {int cmd_type; TYPE_6__* ctx; TYPE_2__* cycle; int pool; TYPE_1__* args; } ;
typedef TYPE_8__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_20__ {TYPE_7__** modules; } ;
struct TYPE_19__ {int * elts; } ;
struct TYPE_18__ {size_t ctx_index; } ;


 char* NGX_CONF_ERROR ;
 scalar_t__ NGX_RTMP_MODULE ;
 int NGX_RTMP_REC_CONF ;
 void* ngx_array_push (int *) ;
 char* ngx_conf_parse (TYPE_8__*,int *) ;
 TYPE_7__** ngx_modules ;
 void* ngx_pcalloc (int ,int) ;
 void* ngx_rtmp_conf_get_module_app_conf (TYPE_8__*,TYPE_12__) ;
 TYPE_12__ ngx_rtmp_core_module ;
 int ngx_rtmp_max_module ;
 TYPE_12__ ngx_rtmp_record_module ;
 TYPE_3__* stub1 (TYPE_8__*) ;

__attribute__((used)) static char *
ngx_rtmp_record_recorder(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    char *rv;
    ngx_int_t i;
    ngx_str_t *value;
    ngx_conf_t save;
    ngx_module_t **modules;
    ngx_rtmp_module_t *module;
    ngx_rtmp_core_app_conf_t *cacf, **pcacf, *rcacf;
    ngx_rtmp_record_app_conf_t *racf, **pracf, *rracf;
    ngx_rtmp_conf_ctx_t *ctx, *pctx;

    value = cf->args->elts;

    cacf = ngx_rtmp_conf_get_module_app_conf(cf, ngx_rtmp_core_module);

    racf = ngx_rtmp_conf_get_module_app_conf(cf, ngx_rtmp_record_module);

    ctx = ngx_pcalloc(cf->pool, sizeof(ngx_rtmp_conf_ctx_t));
    if (ctx == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    pctx = cf->ctx;

    ctx->main_conf = pctx->main_conf;
    ctx->srv_conf = pctx->srv_conf;

    ctx->app_conf = ngx_pcalloc(cf->pool, sizeof(void *) * ngx_rtmp_max_module);
    if (ctx->app_conf == ((void*)0)) {
        return NGX_CONF_ERROR;
    }




    modules = ngx_modules;


    for (i = 0; modules[i]; i++) {
        if (modules[i]->type != NGX_RTMP_MODULE) {
            continue;
        }

        module = modules[i]->ctx;

        if (module->create_app_conf) {
            ctx->app_conf[modules[i]->ctx_index] = module->create_app_conf(cf);
            if (ctx->app_conf[modules[i]->ctx_index] == ((void*)0)) {
                return NGX_CONF_ERROR;
            }
        }
    }


    rcacf = ctx->app_conf[ngx_rtmp_core_module.ctx_index];
    rcacf->app_conf = ctx->app_conf;
    pcacf = ngx_array_push(&cacf->applications);
    if (pcacf == ((void*)0)) {
        return NGX_CONF_ERROR;
    }
    *pcacf = rcacf;


    rracf = ctx->app_conf[ngx_rtmp_record_module.ctx_index];
    rracf->rec_conf = ctx->app_conf;
    pracf = ngx_array_push(&racf->rec);
    if (pracf == ((void*)0)) {
        return NGX_CONF_ERROR;
    }
    *pracf = rracf;

    rracf->id = value[1];


    save = *cf;
    cf->ctx = ctx;
    cf->cmd_type = NGX_RTMP_REC_CONF;

    rv = ngx_conf_parse(cf, ((void*)0));
    *cf= save;

    return rv;
}
