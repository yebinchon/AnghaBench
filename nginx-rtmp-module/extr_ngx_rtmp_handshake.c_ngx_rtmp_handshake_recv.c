
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_18__ {int hs_stage; TYPE_5__* hs_buf; TYPE_1__* connection; int hs_old; int timeout; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_19__ {scalar_t__ active; scalar_t__ timer_set; scalar_t__ timedout; TYPE_4__* data; } ;
typedef TYPE_3__ ngx_event_t ;
struct TYPE_20__ {int timedout; scalar_t__ (* recv ) (TYPE_4__*,scalar_t__,scalar_t__) ;int write; int log; TYPE_3__* read; scalar_t__ destroyed; TYPE_2__* data; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_21__ {scalar_t__ last; scalar_t__ end; scalar_t__ pos; scalar_t__ start; } ;
typedef TYPE_5__ ngx_buf_t ;
struct TYPE_17__ {int log; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_ERROR ;
 int NGX_ETIMEDOUT ;
 int NGX_LOG_DEBUG_RTMP ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 int NGX_READ_EVENT ;




 int ngx_add_timer (TYPE_3__*,int ) ;
 int ngx_del_event (TYPE_3__*,int ,int ) ;
 int ngx_del_timer (TYPE_3__*) ;
 scalar_t__ ngx_handle_read_event (TYPE_3__*,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_rtmp_client_full_key ;
 int ngx_rtmp_client_partial_key ;
 int ngx_rtmp_finalize_session (TYPE_2__*) ;
 scalar_t__ ngx_rtmp_handshake_create_challenge (TYPE_2__*,int ,int *) ;
 scalar_t__ ngx_rtmp_handshake_create_response (TYPE_2__*) ;
 int ngx_rtmp_handshake_done (TYPE_2__*) ;
 scalar_t__ ngx_rtmp_handshake_parse_challenge (TYPE_2__*,int *,int *) ;
 int ngx_rtmp_handshake_send (int ) ;
 int ngx_rtmp_server_full_key ;
 int ngx_rtmp_server_partial_key ;
 int ngx_rtmp_server_version ;
 scalar_t__ stub1 (TYPE_4__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
ngx_rtmp_handshake_recv(ngx_event_t *rev)
{
    ssize_t n;
    ngx_connection_t *c;
    ngx_rtmp_session_t *s;
    ngx_buf_t *b;

    c = rev->data;
    s = c->data;

    if (c->destroyed) {
        return;
    }

    if (rev->timedout) {
        ngx_log_error(NGX_LOG_INFO, c->log, NGX_ETIMEDOUT,
                "handshake: recv: client timed out");
        c->timedout = 1;
        ngx_rtmp_finalize_session(s);
        return;
    }

    if (rev->timer_set) {
        ngx_del_timer(rev);
    }

    b = s->hs_buf;

    while (b->last != b->end) {
        n = c->recv(c, b->last, b->end - b->last);

        if (n == NGX_ERROR || n == 0) {
            ngx_rtmp_finalize_session(s);
            return;
        }

        if (n == NGX_AGAIN) {
            ngx_add_timer(rev, s->timeout);
            if (ngx_handle_read_event(c->read, 0) != NGX_OK) {
                ngx_rtmp_finalize_session(s);
            }
            return;
        }

        b->last += n;
    }

    if (rev->active) {
        ngx_del_event(rev, NGX_READ_EVENT, 0);
    }

    ++s->hs_stage;
    ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
            "handshake: stage %ui", s->hs_stage);

    switch (s->hs_stage) {
        case 128:
            if (ngx_rtmp_handshake_parse_challenge(s,
                    &ngx_rtmp_client_partial_key,
                    &ngx_rtmp_server_full_key) != NGX_OK)
            {
                ngx_log_error(NGX_LOG_INFO, c->log, 0,
                        "handshake: error parsing challenge");
                ngx_rtmp_finalize_session(s);
                return;
            }
            if (s->hs_old) {
                ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                        "handshake: old-style challenge");
                s->hs_buf->pos = s->hs_buf->start;
                s->hs_buf->last = s->hs_buf->end;
            } else if (ngx_rtmp_handshake_create_challenge(s,
                        ngx_rtmp_server_version,
                        &ngx_rtmp_server_partial_key) != NGX_OK)
            {
                ngx_log_error(NGX_LOG_INFO, c->log, 0,
                        "handshake: error creating challenge");
                ngx_rtmp_finalize_session(s);
                return;
            }
            ngx_rtmp_handshake_send(c->write);
            break;

        case 129:
            ngx_rtmp_handshake_done(s);
            break;

        case 131:
            if (ngx_rtmp_handshake_parse_challenge(s,
                    &ngx_rtmp_server_partial_key,
                    &ngx_rtmp_client_full_key) != NGX_OK)
            {
                ngx_log_error(NGX_LOG_INFO, c->log, 0,
                        "handshake: error parsing challenge");
                ngx_rtmp_finalize_session(s);
                return;
            }
            s->hs_buf->pos = s->hs_buf->last = s->hs_buf->start + 1;
            ngx_rtmp_handshake_recv(c->read);
            break;

        case 130:
            if (ngx_rtmp_handshake_create_response(s) != NGX_OK) {
                ngx_log_error(NGX_LOG_INFO, c->log, 0,
                        "handshake: response error");
                ngx_rtmp_finalize_session(s);
                return;
            }
            ngx_rtmp_handshake_send(c->write);
            break;
    }
}
