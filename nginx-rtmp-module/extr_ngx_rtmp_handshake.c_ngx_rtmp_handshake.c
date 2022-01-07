
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int hs_stage; int hs_buf; TYPE_3__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_9__ {TYPE_4__* read; int log; TYPE_1__* write; } ;
typedef TYPE_3__ ngx_connection_t ;
struct TYPE_10__ {int (* handler ) (TYPE_4__*) ;} ;
struct TYPE_7__ {int handler; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int NGX_RTMP_HANDSHAKE_SERVER_RECV_CHALLENGE ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_rtmp_alloc_handshake_buffer (TYPE_2__*) ;
 int ngx_rtmp_handshake_recv (TYPE_4__*) ;
 int ngx_rtmp_handshake_send ;

void
ngx_rtmp_handshake(ngx_rtmp_session_t *s)
{
    ngx_connection_t *c;

    c = s->connection;
    c->read->handler = ngx_rtmp_handshake_recv;
    c->write->handler = ngx_rtmp_handshake_send;

    ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
            "handshake: start server handshake");

    s->hs_buf = ngx_rtmp_alloc_handshake_buffer(s);
    s->hs_stage = NGX_RTMP_HANDSHAKE_SERVER_RECV_CHALLENGE;

    ngx_rtmp_handshake_recv(c->read);
}
