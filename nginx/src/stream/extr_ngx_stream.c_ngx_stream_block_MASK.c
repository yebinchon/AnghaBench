#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_8__ ;
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_26__ ;
typedef  struct TYPE_29__   TYPE_23__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
struct TYPE_33__ {scalar_t__ (* preconfiguration ) (TYPE_8__*) ;char* (* init_main_conf ) (TYPE_8__*,TYPE_6__*) ;char* (* merge_srv_conf ) (TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;scalar_t__ (* postconfiguration ) (TYPE_8__*) ;int /*<<< orphan*/ * (* create_srv_conf ) (TYPE_8__*) ;TYPE_6__* (* create_main_conf ) (TYPE_8__*) ;} ;
typedef  TYPE_4__ ngx_stream_module_t ;
typedef  int /*<<< orphan*/  ngx_stream_listen_t ;
struct TYPE_34__ {TYPE_7__* ctx; } ;
typedef  TYPE_5__ ngx_stream_core_srv_conf_t ;
struct TYPE_28__ {size_t nelts; int /*<<< orphan*/ * elts; } ;
struct TYPE_32__ {size_t nelts; TYPE_5__** elts; } ;
struct TYPE_35__ {TYPE_1__ listen; TYPE_3__ servers; } ;
typedef  TYPE_6__ ngx_stream_core_main_conf_t ;
typedef  int /*<<< orphan*/  ngx_stream_conf_port_t ;
struct TYPE_36__ {int /*<<< orphan*/ ** srv_conf; TYPE_6__** main_conf; } ;
typedef  TYPE_7__ ngx_stream_conf_ctx_t ;
struct TYPE_37__ {int /*<<< orphan*/  temp_pool; TYPE_26__* cycle; TYPE_7__* ctx; int /*<<< orphan*/  cmd_type; scalar_t__ module_type; int /*<<< orphan*/  pool; } ;
typedef  TYPE_8__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_command_t ;
typedef  int /*<<< orphan*/  ngx_array_t ;
struct TYPE_31__ {scalar_t__ type; size_t ctx_index; TYPE_4__* ctx; } ;
struct TYPE_30__ {TYPE_2__** modules; } ;
struct TYPE_29__ {size_t ctx_index; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  NGX_STREAM_MAIN_CONF ; 
 scalar_t__ NGX_STREAM_MODULE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 char* FUNC1 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_26__*,scalar_t__) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_23__ ngx_stream_core_module ; 
 scalar_t__ FUNC5 (TYPE_8__*,TYPE_6__*) ; 
 scalar_t__ FUNC6 (TYPE_8__*,TYPE_6__*) ; 
 int ngx_stream_max_module ; 
 char* FUNC7 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_8__*) ; 
 TYPE_6__* FUNC9 (TYPE_8__*) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_8__*) ; 
 scalar_t__ FUNC11 (TYPE_8__*) ; 
 char* FUNC12 (TYPE_8__*,TYPE_6__*) ; 
 char* FUNC13 (TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (TYPE_8__*) ; 

__attribute__((used)) static char *
FUNC15(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    char                          *rv;
    ngx_uint_t                     i, m, mi, s;
    ngx_conf_t                     pcf;
    ngx_array_t                    ports;
    ngx_stream_listen_t           *listen;
    ngx_stream_module_t           *module;
    ngx_stream_conf_ctx_t         *ctx;
    ngx_stream_core_srv_conf_t   **cscfp;
    ngx_stream_core_main_conf_t   *cmcf;

    if (*(ngx_stream_conf_ctx_t **) conf) {
        return "is duplicate";
    }

    /* the main stream context */

    ctx = FUNC3(cf->pool, sizeof(ngx_stream_conf_ctx_t));
    if (ctx == NULL) {
        return NGX_CONF_ERROR;
    }

    *(ngx_stream_conf_ctx_t **) conf = ctx;

    /* count the number of the stream modules and set up their indices */

    ngx_stream_max_module = FUNC2(cf->cycle, NGX_STREAM_MODULE);


    /* the stream main_conf context, it's the same in the all stream contexts */

    ctx->main_conf = FUNC3(cf->pool,
                                 sizeof(void *) * ngx_stream_max_module);
    if (ctx->main_conf == NULL) {
        return NGX_CONF_ERROR;
    }


    /*
     * the stream null srv_conf context, it is used to merge
     * the server{}s' srv_conf's
     */

    ctx->srv_conf = FUNC3(cf->pool,
                                sizeof(void *) * ngx_stream_max_module);
    if (ctx->srv_conf == NULL) {
        return NGX_CONF_ERROR;
    }


    /*
     * create the main_conf's and the null srv_conf's of the all stream modules
     */

    for (m = 0; cf->cycle->modules[m]; m++) {
        if (cf->cycle->modules[m]->type != NGX_STREAM_MODULE) {
            continue;
        }

        module = cf->cycle->modules[m]->ctx;
        mi = cf->cycle->modules[m]->ctx_index;

        if (module->create_main_conf) {
            ctx->main_conf[mi] = module->create_main_conf(cf);
            if (ctx->main_conf[mi] == NULL) {
                return NGX_CONF_ERROR;
            }
        }

        if (module->create_srv_conf) {
            ctx->srv_conf[mi] = module->create_srv_conf(cf);
            if (ctx->srv_conf[mi] == NULL) {
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


    /* parse inside the stream{} block */

    cf->module_type = NGX_STREAM_MODULE;
    cf->cmd_type = NGX_STREAM_MAIN_CONF;
    rv = FUNC1(cf, NULL);

    if (rv != NGX_CONF_OK) {
        *cf = pcf;
        return rv;
    }


    /* init stream{} main_conf's, merge the server{}s' srv_conf's */

    cmcf = ctx->main_conf[ngx_stream_core_module.ctx_index];
    cscfp = cmcf->servers.elts;

    for (m = 0; cf->cycle->modules[m]; m++) {
        if (cf->cycle->modules[m]->type != NGX_STREAM_MODULE) {
            continue;
        }

        module = cf->cycle->modules[m]->ctx;
        mi = cf->cycle->modules[m]->ctx_index;

        /* init stream{} main_conf's */

        cf->ctx = ctx;

        if (module->init_main_conf) {
            rv = module->init_main_conf(cf, ctx->main_conf[mi]);
            if (rv != NGX_CONF_OK) {
                *cf = pcf;
                return rv;
            }
        }

        for (s = 0; s < cmcf->servers.nelts; s++) {

            /* merge the server{}s' srv_conf's */

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

    if (FUNC6(cf, cmcf) != NGX_OK) {
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

    if (FUNC8(cf) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    *cf = pcf;

    if (FUNC5(cf, cmcf) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    if (FUNC0(&ports, cf->temp_pool, 4, sizeof(ngx_stream_conf_port_t))
        != NGX_OK)
    {
        return NGX_CONF_ERROR;
    }

    listen = cmcf->listen.elts;

    for (i = 0; i < cmcf->listen.nelts; i++) {
        if (FUNC4(cf, &ports, &listen[i]) != NGX_OK) {
            return NGX_CONF_ERROR;
        }
    }

    return FUNC7(cf, &ports);
}