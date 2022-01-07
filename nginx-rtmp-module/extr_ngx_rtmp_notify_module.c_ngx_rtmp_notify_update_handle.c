
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_13__ {int update_evt; } ;
typedef TYPE_3__ ngx_rtmp_notify_ctx_t ;
struct TYPE_14__ {int update_timeout; scalar_t__ update_strict; } ;
typedef TYPE_4__ ngx_rtmp_notify_app_conf_t ;
typedef scalar_t__ ngx_int_t ;
typedef int ngx_chain_t ;
struct TYPE_11__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_RTMP ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 int ngx_add_timer (int *,int ) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 TYPE_4__* ngx_rtmp_get_module_app_conf (TYPE_2__*,int ) ;
 TYPE_3__* ngx_rtmp_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_rtmp_notify_module ;
 scalar_t__ ngx_rtmp_notify_parse_http_retcode (TYPE_2__*,int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_notify_update_handle(ngx_rtmp_session_t *s,
        void *arg, ngx_chain_t *in)
{
    ngx_rtmp_notify_app_conf_t *nacf;
    ngx_rtmp_notify_ctx_t *ctx;
    ngx_int_t rc;

    nacf = ngx_rtmp_get_module_app_conf(s, ngx_rtmp_notify_module);

    rc = ngx_rtmp_notify_parse_http_retcode(s, in);

    if ((!nacf->update_strict && rc == NGX_ERROR) ||
         (nacf->update_strict && rc != NGX_OK))
    {
        ngx_log_error(NGX_LOG_INFO, s->connection->log, 0,
                      "notify: update failed");

        return NGX_ERROR;
    }

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_notify_module);

    ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "notify: schedule update %Mms",
                   nacf->update_timeout);

    ngx_add_timer(&ctx->update_evt, nacf->update_timeout);

    return NGX_OK;
}
