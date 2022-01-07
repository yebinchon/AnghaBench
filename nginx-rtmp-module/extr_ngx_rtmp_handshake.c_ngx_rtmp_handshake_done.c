
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_8__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 scalar_t__ NGX_OK ;
 int NGX_RTMP_HANDSHAKE_DONE ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_rtmp_cycle (TYPE_2__*) ;
 int ngx_rtmp_finalize_session (TYPE_2__*) ;
 scalar_t__ ngx_rtmp_fire_event (TYPE_2__*,int ,int *,int *) ;
 int ngx_rtmp_free_handshake_buffers (TYPE_2__*) ;

__attribute__((used)) static void
ngx_rtmp_handshake_done(ngx_rtmp_session_t *s)
{
    ngx_rtmp_free_handshake_buffers(s);

    ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
            "handshake: done");

    if (ngx_rtmp_fire_event(s, NGX_RTMP_HANDSHAKE_DONE,
                ((void*)0), ((void*)0)) != NGX_OK)
    {
        ngx_rtmp_finalize_session(s);
        return;
    }

    ngx_rtmp_cycle(s);
}
