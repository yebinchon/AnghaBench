
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_14__ {int len; char* data; } ;
typedef TYPE_2__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_15__ {TYPE_4__* try_files; } ;
typedef TYPE_3__ ngx_http_try_files_loc_conf_t ;
struct TYPE_16__ {int test_dir; int code; TYPE_2__ name; int values; int lengths; } ;
typedef TYPE_4__ ngx_http_try_file_t ;
struct TYPE_17__ {int variables; int complete_lengths; int complete_values; int * values; int * lengths; TYPE_2__* source; TYPE_6__* cf; } ;
typedef TYPE_5__ ngx_http_script_compile_t ;
struct TYPE_18__ {TYPE_1__* args; int pool; } ;
typedef TYPE_6__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_13__ {int nelts; TYPE_2__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_ERROR ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_OK ;
 int ngx_atoi (char*,int) ;
 int ngx_conf_log_error (int ,TYPE_6__*,int ,char*,int,char*) ;
 scalar_t__ ngx_http_script_compile (TYPE_5__*) ;
 int ngx_http_script_variables_count (TYPE_2__*) ;
 int ngx_memzero (TYPE_5__*,int) ;
 TYPE_4__* ngx_pcalloc (int ,int) ;

__attribute__((used)) static char *
ngx_http_try_files(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_try_files_loc_conf_t *tlcf = conf;

    ngx_str_t *value;
    ngx_int_t code;
    ngx_uint_t i, n;
    ngx_http_try_file_t *tf;
    ngx_http_script_compile_t sc;

    if (tlcf->try_files) {
        return "is duplicate";
    }

    tf = ngx_pcalloc(cf->pool, cf->args->nelts * sizeof(ngx_http_try_file_t));
    if (tf == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    tlcf->try_files = tf;

    value = cf->args->elts;

    for (i = 0; i < cf->args->nelts - 1; i++) {

        tf[i].name = value[i + 1];

        if (tf[i].name.len > 0
            && tf[i].name.data[tf[i].name.len - 1] == '/'
            && i + 2 < cf->args->nelts)
        {
            tf[i].test_dir = 1;
            tf[i].name.len--;
            tf[i].name.data[tf[i].name.len] = '\0';
        }

        n = ngx_http_script_variables_count(&tf[i].name);

        if (n) {
            ngx_memzero(&sc, sizeof(ngx_http_script_compile_t));

            sc.cf = cf;
            sc.source = &tf[i].name;
            sc.lengths = &tf[i].lengths;
            sc.values = &tf[i].values;
            sc.variables = n;
            sc.complete_lengths = 1;
            sc.complete_values = 1;

            if (ngx_http_script_compile(&sc) != NGX_OK) {
                return NGX_CONF_ERROR;
            }

        } else {

            tf[i].name.len++;
        }
    }

    if (tf[i - 1].name.data[0] == '=') {

        code = ngx_atoi(tf[i - 1].name.data + 1, tf[i - 1].name.len - 2);

        if (code == NGX_ERROR || code > 999) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "invalid code \"%*s\"",
                               tf[i - 1].name.len - 1, tf[i - 1].name.data);
            return NGX_CONF_ERROR;
        }

        tf[i].code = code;
    }

    return NGX_CONF_OK;
}
