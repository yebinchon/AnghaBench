
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ len; } ;
struct TYPE_13__ {int quit; TYPE_3__* connection; TYPE_1__ out; TYPE_2__* proxy; } ;
typedef TYPE_5__ ngx_mail_session_t ;
struct TYPE_14__ {int fd; } ;
struct TYPE_12__ {TYPE_8__* connection; } ;
struct TYPE_11__ {int write; int log; } ;
struct TYPE_10__ {TYPE_4__ upstream; } ;


 int NGX_LOG_DEBUG_MAIL ;
 int ngx_close_connection (TYPE_8__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_mail_send (int ) ;
 int ngx_mail_session_internal_server_error (TYPE_5__*) ;

__attribute__((used)) static void
ngx_mail_proxy_upstream_error(ngx_mail_session_t *s)
{
    if (s->proxy->upstream.connection) {
        ngx_log_debug1(NGX_LOG_DEBUG_MAIL, s->connection->log, 0,
                       "close mail proxy connection: %d",
                       s->proxy->upstream.connection->fd);

        ngx_close_connection(s->proxy->upstream.connection);
    }

    if (s->out.len == 0) {
        ngx_mail_session_internal_server_error(s);
        return;
    }

    s->quit = 1;
    ngx_mail_send(s->connection->write);
}
