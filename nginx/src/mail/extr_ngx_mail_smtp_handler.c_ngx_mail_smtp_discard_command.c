
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_12__ {TYPE_1__* buffer; } ;
typedef TYPE_2__ ngx_mail_session_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_13__ {scalar_t__ (* recv ) (TYPE_3__*,scalar_t__,scalar_t__) ;int read; } ;
typedef TYPE_3__ ngx_connection_t ;
struct TYPE_11__ {scalar_t__ last; scalar_t__ end; scalar_t__ pos; scalar_t__ start; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_handle_read_event (int ,int ) ;
 int ngx_mail_close_connection (TYPE_3__*) ;
 int ngx_mail_session_internal_server_error (TYPE_2__*) ;
 int ngx_mail_smtp_log_rejected_command (TYPE_2__*,TYPE_3__*,char*) ;
 scalar_t__ stub1 (TYPE_3__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static ngx_int_t
ngx_mail_smtp_discard_command(ngx_mail_session_t *s, ngx_connection_t *c,
    char *err)
{
    ssize_t n;

    n = c->recv(c, s->buffer->last, s->buffer->end - s->buffer->last);

    if (n == NGX_ERROR || n == 0) {
        ngx_mail_close_connection(c);
        return NGX_ERROR;
    }

    if (n > 0) {
        s->buffer->last += n;
    }

    if (n == NGX_AGAIN) {
        if (ngx_handle_read_event(c->read, 0) != NGX_OK) {
            ngx_mail_session_internal_server_error(s);
            return NGX_ERROR;
        }

        return NGX_AGAIN;
    }

    ngx_mail_smtp_log_rejected_command(s, c, err);

    s->buffer->pos = s->buffer->start;
    s->buffer->last = s->buffer->start;

    return NGX_OK;
}
