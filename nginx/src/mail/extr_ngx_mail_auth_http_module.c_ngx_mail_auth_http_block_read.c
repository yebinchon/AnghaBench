
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ngx_mail_session_t ;
struct TYPE_8__ {int connection; } ;
struct TYPE_9__ {int pool; TYPE_1__ peer; } ;
typedef TYPE_2__ ngx_mail_auth_http_ctx_t ;
struct TYPE_10__ {TYPE_4__* data; int log; } ;
typedef TYPE_3__ ngx_event_t ;
struct TYPE_11__ {int * data; } ;
typedef TYPE_4__ ngx_connection_t ;


 int NGX_LOG_DEBUG_MAIL ;
 scalar_t__ NGX_OK ;
 int ngx_close_connection (int ) ;
 int ngx_destroy_pool (int ) ;
 scalar_t__ ngx_handle_read_event (TYPE_3__*,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_mail_auth_http_module ;
 TYPE_2__* ngx_mail_get_module_ctx (int *,int ) ;
 int ngx_mail_session_internal_server_error (int *) ;

__attribute__((used)) static void
ngx_mail_auth_http_block_read(ngx_event_t *rev)
{
    ngx_connection_t *c;
    ngx_mail_session_t *s;
    ngx_mail_auth_http_ctx_t *ctx;

    ngx_log_debug0(NGX_LOG_DEBUG_MAIL, rev->log, 0,
                   "mail auth http block read");

    if (ngx_handle_read_event(rev, 0) != NGX_OK) {
        c = rev->data;
        s = c->data;

        ctx = ngx_mail_get_module_ctx(s, ngx_mail_auth_http_module);

        ngx_close_connection(ctx->peer.connection);
        ngx_destroy_pool(ctx->pool);
        ngx_mail_session_internal_server_error(s);
    }
}
