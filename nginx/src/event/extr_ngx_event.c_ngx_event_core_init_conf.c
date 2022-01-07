
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_14__ {scalar_t__ type; TYPE_3__* ctx; int ctx_index; } ;
typedef TYPE_2__ ngx_module_t ;
typedef size_t ngx_int_t ;
struct TYPE_15__ {TYPE_1__* name; } ;
typedef TYPE_3__ ngx_event_module_t ;
struct TYPE_16__ {int accept_mutex_delay; int accept_mutex; int multi_accept; int name; int use; int connections; } ;
typedef TYPE_4__ ngx_event_conf_t ;
struct TYPE_17__ {int connection_n; int log; TYPE_2__** modules; } ;
typedef TYPE_5__ ngx_cycle_t ;
struct TYPE_13__ {int data; } ;
struct TYPE_12__ {int data; } ;


 int DEFAULT_CONNECTIONS ;
 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_ENOSYS ;
 scalar_t__ NGX_EVENT_MODULE ;
 int NGX_LOG_EMERG ;
 int close (int) ;
 int epoll_create (int) ;
 TYPE_11__ event_core_name ;
 int ngx_conf_init_msec_value (int ,int) ;
 int ngx_conf_init_ptr_value (int ,int ) ;
 int ngx_conf_init_uint_value (int ,int ) ;
 int ngx_conf_init_value (int ,int ) ;
 TYPE_2__ ngx_devpoll_module ;
 TYPE_2__ ngx_epoll_module ;
 scalar_t__ ngx_errno ;
 TYPE_2__ ngx_kqueue_module ;
 int ngx_log_error (int ,int ,int ,char*) ;
 TYPE_2__ ngx_select_module ;
 scalar_t__ ngx_strcmp (int ,int ) ;

__attribute__((used)) static char *
ngx_event_core_init_conf(ngx_cycle_t *cycle, void *conf)
{
    ngx_event_conf_t *ecf = conf;




    ngx_int_t i;
    ngx_module_t *module;
    ngx_event_module_t *event_module;

    module = ((void*)0);
    if (module == ((void*)0)) {
        for (i = 0; cycle->modules[i]; i++) {

            if (cycle->modules[i]->type != NGX_EVENT_MODULE) {
                continue;
            }

            event_module = cycle->modules[i]->ctx;

            if (ngx_strcmp(event_module->name->data, event_core_name.data) == 0)
            {
                continue;
            }

            module = cycle->modules[i];
            break;
        }
    }

    if (module == ((void*)0)) {
        ngx_log_error(NGX_LOG_EMERG, cycle->log, 0, "no events module found");
        return NGX_CONF_ERROR;
    }

    ngx_conf_init_uint_value(ecf->connections, DEFAULT_CONNECTIONS);
    cycle->connection_n = ecf->connections;

    ngx_conf_init_uint_value(ecf->use, module->ctx_index);

    event_module = module->ctx;
    ngx_conf_init_ptr_value(ecf->name, event_module->name->data);

    ngx_conf_init_value(ecf->multi_accept, 0);
    ngx_conf_init_value(ecf->accept_mutex, 0);
    ngx_conf_init_msec_value(ecf->accept_mutex_delay, 500);

    return NGX_CONF_OK;
}
