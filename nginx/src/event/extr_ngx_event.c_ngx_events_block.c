
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_10__ {char* (* init_conf ) (TYPE_4__*,void*) ;void* (* create_conf ) (TYPE_4__*) ;} ;
typedef TYPE_2__ ngx_event_module_t ;
struct TYPE_11__ {void*** ctx; TYPE_4__* cycle; int cmd_type; scalar_t__ module_type; int pool; } ;
typedef TYPE_3__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_12__ {TYPE_1__** modules; } ;
struct TYPE_9__ {scalar_t__ type; size_t ctx_index; TYPE_2__* ctx; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_EVENT_CONF ;
 scalar_t__ NGX_EVENT_MODULE ;
 char* ngx_conf_parse (TYPE_3__*,int *) ;
 int ngx_count_modules (TYPE_4__*,scalar_t__) ;
 int ngx_event_max_module ;
 void* ngx_pcalloc (int ,int) ;
 void* stub1 (TYPE_4__*) ;
 char* stub2 (TYPE_4__*,void*) ;

__attribute__((used)) static char *
ngx_events_block(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    char *rv;
    void ***ctx;
    ngx_uint_t i;
    ngx_conf_t pcf;
    ngx_event_module_t *m;

    if (*(void **) conf) {
        return "is duplicate";
    }



    ngx_event_max_module = ngx_count_modules(cf->cycle, NGX_EVENT_MODULE);

    ctx = ngx_pcalloc(cf->pool, sizeof(void *));
    if (ctx == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    *ctx = ngx_pcalloc(cf->pool, ngx_event_max_module * sizeof(void *));
    if (*ctx == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    *(void **) conf = ctx;

    for (i = 0; cf->cycle->modules[i]; i++) {
        if (cf->cycle->modules[i]->type != NGX_EVENT_MODULE) {
            continue;
        }

        m = cf->cycle->modules[i]->ctx;

        if (m->create_conf) {
            (*ctx)[cf->cycle->modules[i]->ctx_index] =
                                                     m->create_conf(cf->cycle);
            if ((*ctx)[cf->cycle->modules[i]->ctx_index] == ((void*)0)) {
                return NGX_CONF_ERROR;
            }
        }
    }

    pcf = *cf;
    cf->ctx = ctx;
    cf->module_type = NGX_EVENT_MODULE;
    cf->cmd_type = NGX_EVENT_CONF;

    rv = ngx_conf_parse(cf, ((void*)0));

    *cf = pcf;

    if (rv != NGX_CONF_OK) {
        return rv;
    }

    for (i = 0; cf->cycle->modules[i]; i++) {
        if (cf->cycle->modules[i]->type != NGX_EVENT_MODULE) {
            continue;
        }

        m = cf->cycle->modules[i]->ctx;

        if (m->init_conf) {
            rv = m->init_conf(cf->cycle,
                              (*ctx)[cf->cycle->modules[i]->ctx_index]);
            if (rv != NGX_CONF_OK) {
                return rv;
            }
        }
    }

    return NGX_CONF_OK;
}
