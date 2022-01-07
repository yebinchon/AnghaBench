
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef char u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_19__ {int len; char* data; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_20__ {int no_referer; int blocked_referer; int server_names; TYPE_6__* keys; } ;
typedef TYPE_3__ ngx_http_referer_conf_t ;
typedef int ngx_hash_keys_arrays_t ;
struct TYPE_21__ {TYPE_1__* args; int pool; int temp_pool; } ;
typedef TYPE_4__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_22__ {int temp_pool; int pool; } ;
struct TYPE_18__ {size_t nelts; TYPE_2__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_HASH_SMALL ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_OK ;
 int ngx_conf_log_error (int ,TYPE_4__*,int ,char*,TYPE_2__*) ;
 scalar_t__ ngx_hash_keys_array_init (TYPE_6__*,int ) ;
 scalar_t__ ngx_http_add_referer (TYPE_4__*,TYPE_6__*,TYPE_2__*,TYPE_2__*) ;
 scalar_t__ ngx_http_add_regex_referer (TYPE_4__*,TYPE_3__*,TYPE_2__*) ;
 TYPE_6__* ngx_pcalloc (int ,int) ;
 int ngx_str_null (TYPE_2__*) ;
 scalar_t__ ngx_strchr (char*,char) ;
 scalar_t__ ngx_strcmp (char*,char*) ;

__attribute__((used)) static char *
ngx_http_valid_referers(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_referer_conf_t *rlcf = conf;

    u_char *p;
    ngx_str_t *value, uri;
    ngx_uint_t i;

    if (rlcf->keys == ((void*)0)) {
        rlcf->keys = ngx_pcalloc(cf->temp_pool, sizeof(ngx_hash_keys_arrays_t));
        if (rlcf->keys == ((void*)0)) {
            return NGX_CONF_ERROR;
        }

        rlcf->keys->pool = cf->pool;
        rlcf->keys->temp_pool = cf->pool;

        if (ngx_hash_keys_array_init(rlcf->keys, NGX_HASH_SMALL) != NGX_OK) {
            return NGX_CONF_ERROR;
        }
    }

    value = cf->args->elts;

    for (i = 1; i < cf->args->nelts; i++) {
        if (value[i].len == 0) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "invalid referer \"%V\"", &value[i]);
            return NGX_CONF_ERROR;
        }

        if (ngx_strcmp(value[i].data, "none") == 0) {
            rlcf->no_referer = 1;
            continue;
        }

        if (ngx_strcmp(value[i].data, "blocked") == 0) {
            rlcf->blocked_referer = 1;
            continue;
        }

        if (ngx_strcmp(value[i].data, "server_names") == 0) {
            rlcf->server_names = 1;
            continue;
        }

        if (value[i].data[0] == '~') {
            if (ngx_http_add_regex_referer(cf, rlcf, &value[i]) != NGX_OK) {
                return NGX_CONF_ERROR;
            }

            continue;
        }

        ngx_str_null(&uri);

        p = (u_char *) ngx_strchr(value[i].data, '/');

        if (p) {
            uri.len = (value[i].data + value[i].len) - p;
            uri.data = p;
            value[i].len = p - value[i].data;
        }

        if (ngx_http_add_referer(cf, rlcf->keys, &value[i], &uri) != NGX_OK) {
            return NGX_CONF_ERROR;
        }
    }

    return NGX_CONF_OK;
}
