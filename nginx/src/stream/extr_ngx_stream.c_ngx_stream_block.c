
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_8__ ;
typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_26__ ;
typedef struct TYPE_29__ TYPE_23__ ;
typedef struct TYPE_28__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_33__ {scalar_t__ (* preconfiguration ) (TYPE_8__*) ;char* (* init_main_conf ) (TYPE_8__*,TYPE_6__*) ;char* (* merge_srv_conf ) (TYPE_8__*,int *,int *) ;scalar_t__ (* postconfiguration ) (TYPE_8__*) ;int * (* create_srv_conf ) (TYPE_8__*) ;TYPE_6__* (* create_main_conf ) (TYPE_8__*) ;} ;
typedef TYPE_4__ ngx_stream_module_t ;
typedef int ngx_stream_listen_t ;
struct TYPE_34__ {TYPE_7__* ctx; } ;
typedef TYPE_5__ ngx_stream_core_srv_conf_t ;
struct TYPE_28__ {size_t nelts; int * elts; } ;
struct TYPE_32__ {size_t nelts; TYPE_5__** elts; } ;
struct TYPE_35__ {TYPE_1__ listen; TYPE_3__ servers; } ;
typedef TYPE_6__ ngx_stream_core_main_conf_t ;
typedef int ngx_stream_conf_port_t ;
struct TYPE_36__ {int ** srv_conf; TYPE_6__** main_conf; } ;
typedef TYPE_7__ ngx_stream_conf_ctx_t ;
struct TYPE_37__ {int temp_pool; TYPE_26__* cycle; TYPE_7__* ctx; int cmd_type; scalar_t__ module_type; int pool; } ;
typedef TYPE_8__ ngx_conf_t ;
typedef int ngx_command_t ;
typedef int ngx_array_t ;
struct TYPE_31__ {scalar_t__ type; size_t ctx_index; TYPE_4__* ctx; } ;
struct TYPE_30__ {TYPE_2__** modules; } ;
struct TYPE_29__ {size_t ctx_index; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_OK ;
 int NGX_STREAM_MAIN_CONF ;
 scalar_t__ NGX_STREAM_MODULE ;
 scalar_t__ ngx_array_init (int *,int ,int,int) ;
 char* ngx_conf_parse (TYPE_8__*,int *) ;
 int ngx_count_modules (TYPE_26__*,scalar_t__) ;
 void* ngx_pcalloc (int ,int) ;
 scalar_t__ ngx_stream_add_ports (TYPE_8__*,int *,int *) ;
 TYPE_23__ ngx_stream_core_module ;
 scalar_t__ ngx_stream_init_phase_handlers (TYPE_8__*,TYPE_6__*) ;
 scalar_t__ ngx_stream_init_phases (TYPE_8__*,TYPE_6__*) ;
 int ngx_stream_max_module ;
 char* ngx_stream_optimize_servers (TYPE_8__*,int *) ;
 scalar_t__ ngx_stream_variables_init_vars (TYPE_8__*) ;
 TYPE_6__* stub1 (TYPE_8__*) ;
 int * stub2 (TYPE_8__*) ;
 scalar_t__ stub3 (TYPE_8__*) ;
 char* stub4 (TYPE_8__*,TYPE_6__*) ;
 char* stub5 (TYPE_8__*,int *,int *) ;
 scalar_t__ stub6 (TYPE_8__*) ;

__attribute__((used)) static char *
ngx_stream_block(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    char *rv;
    ngx_uint_t i, m, mi, s;
    ngx_conf_t pcf;
    ngx_array_t ports;
    ngx_stream_listen_t *listen;
    ngx_stream_module_t *module;
    ngx_stream_conf_ctx_t *ctx;
    ngx_stream_core_srv_conf_t **cscfp;
    ngx_stream_core_main_conf_t *cmcf;

    if (*(ngx_stream_conf_ctx_t **) conf) {
        return "is duplicate";
    }



    ctx = ngx_pcalloc(cf->pool, sizeof(ngx_stream_conf_ctx_t));
    if (ctx == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    *(ngx_stream_conf_ctx_t **) conf = ctx;



    ngx_stream_max_module = ngx_count_modules(cf->cycle, NGX_STREAM_MODULE);




    ctx->main_conf = ngx_pcalloc(cf->pool,
                                 sizeof(void *) * ngx_stream_max_module);
    if (ctx->main_conf == ((void*)0)) {
        return NGX_CONF_ERROR;
    }







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
        mi = cf->cycle->modules[m]->ctx_index;

        if (module->create_main_conf) {
            ctx->main_conf[mi] = module->create_main_conf(cf);
            if (ctx->main_conf[mi] == ((void*)0)) {
                return NGX_CONF_ERROR;
            }
        }

        if (module->create_srv_conf) {
            ctx->srv_conf[mi] = module->create_srv_conf(cf);
            if (ctx->srv_conf[mi] == ((void*)0)) {
                return NGX_CONF_ERROR;
            }
        }
    }


    pcf = *cf;
    cf->ctx = ctx;

    for (m = 0; cf->cycle->modules[m]; m++) {
        if (cf->cycle->modules[m]->type != NGX_STREAM_MODULE) {
            continue;
        }

        module = cf->cycle->modules[m]->ctx;

        if (module->preconfiguration) {
            if (module->preconfiguration(cf) != NGX_OK) {
                return NGX_CONF_ERROR;
            }
        }
    }




    cf->module_type = NGX_STREAM_MODULE;
    cf->cmd_type = NGX_STREAM_MAIN_CONF;
    rv = ngx_conf_parse(cf, ((void*)0));

    if (rv != NGX_CONF_OK) {
        *cf = pcf;
        return rv;
    }




    cmcf = ctx->main_conf[ngx_stream_core_module.ctx_index];
    cscfp = cmcf->servers.elts;

    for (m = 0; cf->cycle->modules[m]; m++) {
        if (cf->cycle->modules[m]->type != NGX_STREAM_MODULE) {
            continue;
        }

        module = cf->cycle->modules[m]->ctx;
        mi = cf->cycle->modules[m]->ctx_index;



        cf->ctx = ctx;

        if (module->init_main_conf) {
            rv = module->init_main_conf(cf, ctx->main_conf[mi]);
            if (rv != NGX_CONF_OK) {
                *cf = pcf;
                return rv;
            }
        }

        for (s = 0; s < cmcf->servers.nelts; s++) {



            cf->ctx = cscfp[s]->ctx;

            if (module->merge_srv_conf) {
                rv = module->merge_srv_conf(cf,
                                            ctx->srv_conf[mi],
                                            cscfp[s]->ctx->srv_conf[mi]);
                if (rv != NGX_CONF_OK) {
                    *cf = pcf;
                    return rv;
                }
            }
        }
    }

    if (ngx_stream_init_phases(cf, cmcf) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    for (m = 0; cf->cycle->modules[m]; m++) {
        if (cf->cycle->modules[m]->type != NGX_STREAM_MODULE) {
            continue;
        }

        module = cf->cycle->modules[m]->ctx;

        if (module->postconfiguration) {
            if (module->postconfiguration(cf) != NGX_OK) {
                return NGX_CONF_ERROR;
            }
        }
    }

    if (ngx_stream_variables_init_vars(cf) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    *cf = pcf;

    if (ngx_stream_init_phase_handlers(cf, cmcf) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    if (ngx_array_init(&ports, cf->temp_pool, 4, sizeof(ngx_stream_conf_port_t))
        != NGX_OK)
    {
        return NGX_CONF_ERROR;
    }

    listen = cmcf->listen.elts;

    for (i = 0; i < cmcf->listen.nelts; i++) {
        if (ngx_stream_add_ports(cf, &ports, &listen[i]) != NGX_OK) {
            return NGX_CONF_ERROR;
        }
    }

    return ngx_stream_optimize_servers(cf, &ports);
}
