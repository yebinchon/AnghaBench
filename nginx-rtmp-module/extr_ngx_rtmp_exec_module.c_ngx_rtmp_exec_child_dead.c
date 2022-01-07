
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int handler; int log; TYPE_1__* data; } ;
struct TYPE_8__ {scalar_t__ respawn_timeout; TYPE_7__ respawn_evt; int log; scalar_t__ pid; } ;
typedef TYPE_1__ ngx_rtmp_exec_t ;
typedef int ngx_int_t ;
struct TYPE_9__ {TYPE_3__* data; } ;
typedef TYPE_2__ ngx_event_t ;
struct TYPE_10__ {TYPE_1__* data; } ;
typedef TYPE_3__ ngx_connection_t ;


 scalar_t__ NGX_CONF_UNSET_MSEC ;
 int NGX_LOG_DEBUG_RTMP ;
 int NGX_LOG_INFO ;
 int ngx_add_timer (TYPE_7__*,scalar_t__) ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*,int ,char*) ;
 int ngx_rtmp_exec_kill (TYPE_1__*,int ) ;
 int ngx_rtmp_exec_respawn ;
 int ngx_rtmp_exec_run (TYPE_1__*) ;

__attribute__((used)) static void
ngx_rtmp_exec_child_dead(ngx_event_t *ev)
{
    ngx_connection_t *dummy_conn = ev->data;
    ngx_rtmp_exec_t *e;

    e = dummy_conn->data;

    ngx_log_error(NGX_LOG_INFO, e->log, 0,
                  "exec: child %ui exited; %s", (ngx_int_t) e->pid,
                  e->respawn_timeout == NGX_CONF_UNSET_MSEC ? "respawning" :
                                                               "ignoring");

    ngx_rtmp_exec_kill(e, 0);

    if (e->respawn_timeout == NGX_CONF_UNSET_MSEC) {
        return;
    }

    if (e->respawn_timeout == 0) {
        ngx_rtmp_exec_run(e);
        return;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_RTMP, e->log, 0,
                   "exec: shedule respawn %Mmsec", e->respawn_timeout);

    e->respawn_evt.data = e;
    e->respawn_evt.log = e->log;
    e->respawn_evt.handler = ngx_rtmp_exec_respawn;

    ngx_add_timer(&e->respawn_evt, e->respawn_timeout);
}
