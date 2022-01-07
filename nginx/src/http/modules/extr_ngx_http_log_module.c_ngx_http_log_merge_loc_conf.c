
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int * format; int * file; } ;
typedef TYPE_2__ ngx_http_log_t ;
struct TYPE_11__ {int * elts; } ;
struct TYPE_13__ {int combined_used; TYPE_1__ formats; } ;
typedef TYPE_3__ ngx_http_log_main_conf_t ;
struct TYPE_14__ {int * logs; scalar_t__ off; int * open_file_cache; int open_file_cache_min_uses; int open_file_cache_valid; } ;
typedef TYPE_4__ ngx_http_log_loc_conf_t ;
typedef int ngx_http_log_fmt_t ;
struct TYPE_15__ {int cycle; int pool; } ;
typedef TYPE_5__ ngx_conf_t ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int * NGX_CONF_UNSET_PTR ;
 int * ngx_array_create (int ,int,int) ;
 TYPE_2__* ngx_array_push (int *) ;
 int * ngx_conf_open_file (int ,int *) ;
 int ngx_http_access_log ;
 TYPE_3__* ngx_http_conf_get_module_main_conf (TYPE_5__*,int ) ;
 int ngx_http_log_module ;
 int ngx_memzero (TYPE_2__*,int) ;

__attribute__((used)) static char *
ngx_http_log_merge_loc_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_log_loc_conf_t *prev = parent;
    ngx_http_log_loc_conf_t *conf = child;

    ngx_http_log_t *log;
    ngx_http_log_fmt_t *fmt;
    ngx_http_log_main_conf_t *lmcf;

    if (conf->open_file_cache == NGX_CONF_UNSET_PTR) {

        conf->open_file_cache = prev->open_file_cache;
        conf->open_file_cache_valid = prev->open_file_cache_valid;
        conf->open_file_cache_min_uses = prev->open_file_cache_min_uses;

        if (conf->open_file_cache == NGX_CONF_UNSET_PTR) {
            conf->open_file_cache = ((void*)0);
        }
    }

    if (conf->logs || conf->off) {
        return NGX_CONF_OK;
    }

    conf->logs = prev->logs;
    conf->off = prev->off;

    if (conf->logs || conf->off) {
        return NGX_CONF_OK;
    }

    conf->logs = ngx_array_create(cf->pool, 2, sizeof(ngx_http_log_t));
    if (conf->logs == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    log = ngx_array_push(conf->logs);
    if (log == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    ngx_memzero(log, sizeof(ngx_http_log_t));

    log->file = ngx_conf_open_file(cf->cycle, &ngx_http_access_log);
    if (log->file == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    lmcf = ngx_http_conf_get_module_main_conf(cf, ngx_http_log_module);
    fmt = lmcf->formats.elts;


    log->format = &fmt[0];
    lmcf->combined_used = 1;

    return NGX_CONF_OK;
}
