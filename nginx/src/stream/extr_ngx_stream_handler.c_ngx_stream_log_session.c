
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef int ngx_stream_session_t ;
typedef int (* ngx_stream_handler_pt ) (int *) ;
struct TYPE_7__ {TYPE_2__* phases; } ;
typedef TYPE_3__ ngx_stream_core_main_conf_t ;
struct TYPE_5__ {size_t nelts; int (* elts ) (int *) ;} ;
struct TYPE_6__ {TYPE_1__ handlers; } ;


 size_t NGX_STREAM_LOG_PHASE ;
 int ngx_stream_core_module ;
 TYPE_3__* ngx_stream_get_module_main_conf (int *,int ) ;
 int stub1 (int *) ;

__attribute__((used)) static void
ngx_stream_log_session(ngx_stream_session_t *s)
{
    ngx_uint_t i, n;
    ngx_stream_handler_pt *log_handler;
    ngx_stream_core_main_conf_t *cmcf;

    cmcf = ngx_stream_get_module_main_conf(s, ngx_stream_core_module);

    log_handler = cmcf->phases[NGX_STREAM_LOG_PHASE].handlers.elts;
    n = cmcf->phases[NGX_STREAM_LOG_PHASE].handlers.nelts;

    for (i = 0; i < n; i++) {
        log_handler[i](s);
    }
}
