
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ngx_str_t ;
struct TYPE_9__ {TYPE_3__* elts; } ;
struct TYPE_10__ {TYPE_1__ formats; scalar_t__ combined_used; } ;
typedef TYPE_2__ ngx_rtmp_log_main_conf_t ;
struct TYPE_11__ {int ops; } ;
typedef TYPE_3__ ngx_rtmp_log_fmt_t ;
typedef int ngx_rtmp_handler_pt ;
struct TYPE_12__ {int * events; } ;
typedef TYPE_4__ ngx_rtmp_core_main_conf_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_13__ {int pool; } ;
typedef TYPE_5__ ngx_conf_t ;
typedef int ngx_array_t ;


 scalar_t__ NGX_CONF_OK ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 size_t NGX_RTMP_DISCONNECT ;
 int next_play ;
 int next_publish ;
 scalar_t__ ngx_array_init (int *,int ,int,int) ;
 void* ngx_array_push (int *) ;
 int ngx_rtmp_combined_fmt ;
 void* ngx_rtmp_conf_get_module_main_conf (TYPE_5__*,int ) ;
 int ngx_rtmp_core_module ;
 scalar_t__ ngx_rtmp_log_compile_format (TYPE_5__*,int ,int *,int ) ;
 int ngx_rtmp_log_disconnect ;
 int ngx_rtmp_log_module ;
 int ngx_rtmp_log_play ;
 int ngx_rtmp_log_publish ;
 int ngx_rtmp_play ;
 int ngx_rtmp_publish ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_log_postconfiguration(ngx_conf_t *cf)
{
    ngx_rtmp_core_main_conf_t *cmcf;
    ngx_rtmp_handler_pt *h;
    ngx_rtmp_log_main_conf_t *lmcf;
    ngx_array_t a;
    ngx_rtmp_log_fmt_t *fmt;
    ngx_str_t *value;

    lmcf = ngx_rtmp_conf_get_module_main_conf(cf, ngx_rtmp_log_module);
    if (lmcf->combined_used) {
        if (ngx_array_init(&a, cf->pool, 1, sizeof(ngx_str_t)) != NGX_OK) {
            return NGX_ERROR;
        }

        value = ngx_array_push(&a);
        if (value == ((void*)0)) {
            return NGX_ERROR;
        }

        *value = ngx_rtmp_combined_fmt;
        fmt = lmcf->formats.elts;

        if (ngx_rtmp_log_compile_format(cf, fmt->ops, &a, 0)
            != NGX_CONF_OK)
        {
            return NGX_ERROR;
        }
    }

    cmcf = ngx_rtmp_conf_get_module_main_conf(cf, ngx_rtmp_core_module);

    h = ngx_array_push(&cmcf->events[NGX_RTMP_DISCONNECT]);
    *h = ngx_rtmp_log_disconnect;

    next_publish = ngx_rtmp_publish;
    ngx_rtmp_publish = ngx_rtmp_log_publish;

    next_play = ngx_rtmp_play;
    ngx_rtmp_play = ngx_rtmp_log_play;

    return NGX_OK;
}
