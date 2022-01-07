
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef char u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_9__ {char* data; int len; } ;
typedef TYPE_1__ ngx_str_t ;
struct TYPE_10__ {char** data; int handler; } ;
typedef TYPE_2__ ngx_pool_cleanup_t ;
struct TYPE_11__ {int log; int pool; int conf_ctx; } ;
typedef TYPE_3__ ngx_cycle_t ;
struct TYPE_13__ {size_t nelts; TYPE_1__* elts; } ;
struct TYPE_12__ {char** environment; TYPE_8__ env; } ;
typedef TYPE_4__ ngx_core_conf_t ;


 char** environ ;
 char** ngx_alloc (size_t,int ) ;
 TYPE_1__* ngx_array_push (TYPE_8__*) ;
 int ngx_cleanup_environment ;
 int ngx_core_module ;
 scalar_t__ ngx_get_conf (int ,int ) ;
 char** ngx_os_environ ;
 TYPE_2__* ngx_pool_cleanup_add (int ,int ) ;
 scalar_t__ ngx_strcmp (char*,char*) ;
 scalar_t__ ngx_strncmp (char*,char*,int) ;

char **
ngx_set_environment(ngx_cycle_t *cycle, ngx_uint_t *last)
{
    char **p, **env;
    ngx_str_t *var;
    ngx_uint_t i, n;
    ngx_core_conf_t *ccf;
    ngx_pool_cleanup_t *cln;

    ccf = (ngx_core_conf_t *) ngx_get_conf(cycle->conf_ctx, ngx_core_module);

    if (last == ((void*)0) && ccf->environment) {
        return ccf->environment;
    }

    var = ccf->env.elts;

    for (i = 0; i < ccf->env.nelts; i++) {
        if (ngx_strcmp(var[i].data, "TZ") == 0
            || ngx_strncmp(var[i].data, "TZ=", 3) == 0)
        {
            goto tz_found;
        }
    }

    var = ngx_array_push(&ccf->env);
    if (var == ((void*)0)) {
        return ((void*)0);
    }

    var->len = 2;
    var->data = (u_char *) "TZ";

    var = ccf->env.elts;

tz_found:

    n = 0;

    for (i = 0; i < ccf->env.nelts; i++) {

        if (var[i].data[var[i].len] == '=') {
            n++;
            continue;
        }

        for (p = ngx_os_environ; *p; p++) {

            if (ngx_strncmp(*p, var[i].data, var[i].len) == 0
                && (*p)[var[i].len] == '=')
            {
                n++;
                break;
            }
        }
    }

    if (last) {
        env = ngx_alloc((*last + n + 1) * sizeof(char *), cycle->log);
        if (env == ((void*)0)) {
            return ((void*)0);
        }

        *last = n;

    } else {
        cln = ngx_pool_cleanup_add(cycle->pool, 0);
        if (cln == ((void*)0)) {
            return ((void*)0);
        }

        env = ngx_alloc((n + 1) * sizeof(char *), cycle->log);
        if (env == ((void*)0)) {
            return ((void*)0);
        }

        cln->handler = ngx_cleanup_environment;
        cln->data = env;
    }

    n = 0;

    for (i = 0; i < ccf->env.nelts; i++) {

        if (var[i].data[var[i].len] == '=') {
            env[n++] = (char *) var[i].data;
            continue;
        }

        for (p = ngx_os_environ; *p; p++) {

            if (ngx_strncmp(*p, var[i].data, var[i].len) == 0
                && (*p)[var[i].len] == '=')
            {
                env[n++] = *p;
                break;
            }
        }
    }

    env[n] = ((void*)0);

    if (last == ((void*)0)) {
        ccf->environment = env;
        environ = env;
    }

    return env;
}
