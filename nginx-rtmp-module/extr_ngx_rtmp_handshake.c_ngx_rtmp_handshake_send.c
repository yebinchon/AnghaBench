
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int hs_stage; TYPE_5__* hs_buf; TYPE_1__* connection; int hs_old; int timeout; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_15__ {scalar_t__ active; scalar_t__ timer_set; scalar_t__ timedout; TYPE_4__* data; } ;
typedef TYPE_3__ ngx_event_t ;
struct TYPE_16__ {int timedout; scalar_t__ (* send ) (TYPE_4__*,scalar_t__,scalar_t__) ;int read; int log; int write; scalar_t__ destroyed; TYPE_2__* data; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_17__ {scalar_t__ pos; scalar_t__ last; scalar_t__ start; scalar_t__ end; } ;
typedef TYPE_5__ ngx_buf_t ;
struct TYPE_13__ {int log; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_ERROR ;
 int NGX_ETIMEDOUT ;
 int NGX_LOG_DEBUG_RTMP ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;




 int NGX_WRITE_EVENT ;
 int ngx_add_timer (int ,int ) ;
 int ngx_del_event (TYPE_3__*,int ,int ) ;
 int ngx_del_timer (TYPE_3__*) ;
 scalar_t__ ngx_handle_write_event (int ,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_rtmp_finalize_session (TYPE_2__*) ;
 scalar_t__ ngx_rtmp_handshake_create_response (TYPE_2__*) ;
 int ngx_rtmp_handshake_done (TYPE_2__*) ;
 int ngx_rtmp_handshake_recv (int ) ;
 scalar_t__ stub1 (TYPE_4__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
ngx_rtmp_handshake_send(ngx_event_t *wev)
{
    ngx_int_t n;
    ngx_connection_t *c;
    ngx_rtmp_session_t *s;
    ngx_buf_t *b;

    c = wev->data;
    s = c->data;

    if (c->destroyed) {
        return;
    }

    if (wev->timedout) {
        ngx_log_error(NGX_LOG_INFO, c->log, NGX_ETIMEDOUT,
                "handshake: send: client timed out");
        c->timedout = 1;
        ngx_rtmp_finalize_session(s);
        return;
    }

    if (wev->timer_set) {
        ngx_del_timer(wev);
    }

    b = s->hs_buf;

    while(b->pos != b->last) {
        n = c->send(c, b->pos, b->last - b->pos);

        if (n == NGX_ERROR) {
            ngx_rtmp_finalize_session(s);
            return;
        }

        if (n == NGX_AGAIN || n == 0) {
            ngx_add_timer(c->write, s->timeout);
            if (ngx_handle_write_event(c->write, 0) != NGX_OK) {
                ngx_rtmp_finalize_session(s);
            }
            return;
        }

        b->pos += n;
    }

    if (wev->active) {
        ngx_del_event(wev, NGX_WRITE_EVENT, 0);
    }

    ++s->hs_stage;
    ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
            "handshake: stage %ui", s->hs_stage);

    switch (s->hs_stage) {
        case 128:
            if (s->hs_old) {
                ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                        "handshake: old-style response");
                s->hs_buf->pos = s->hs_buf->start + 1;
                s->hs_buf->last = s->hs_buf->end;
            } else if (ngx_rtmp_handshake_create_response(s) != NGX_OK) {
                ngx_log_error(NGX_LOG_INFO, c->log, 0,
                        "handshake: response error");
                ngx_rtmp_finalize_session(s);
                return;
            }
            ngx_rtmp_handshake_send(wev);
            break;

        case 129:
            s->hs_buf->pos = s->hs_buf->last = s->hs_buf->start + 1;
            ngx_rtmp_handshake_recv(c->read);
            break;

        case 130:
            s->hs_buf->pos = s->hs_buf->last = s->hs_buf->start;
            ngx_rtmp_handshake_recv(c->read);
            break;

        case 131:
            ngx_rtmp_handshake_done(s);
            break;
    }
}
