
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ active; } ;
struct TYPE_6__ {scalar_t__ timer_set; } ;
struct TYPE_5__ {scalar_t__ active; scalar_t__ pid; int log; int * save_pid; int pipefd; TYPE_4__ read_evt; TYPE_3__ respawn_evt; } ;
typedef TYPE_1__ ngx_rtmp_exec_t ;
typedef scalar_t__ ngx_int_t ;


 int NGX_INVALID_PID ;
 int NGX_LOG_DEBUG_RTMP ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 int NGX_READ_EVENT ;
 int close (int ) ;
 int kill (scalar_t__,scalar_t__) ;
 int ngx_del_event (TYPE_4__*,int ,int ) ;
 int ngx_del_timer (TYPE_3__*) ;
 int ngx_errno ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*,scalar_t__) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_exec_kill(ngx_rtmp_exec_t *e, ngx_int_t kill_signal)
{
    if (e->respawn_evt.timer_set) {
        ngx_del_timer(&e->respawn_evt);
    }

    if (e->read_evt.active) {
        ngx_del_event(&e->read_evt, NGX_READ_EVENT, 0);
    }

    if (e->active == 0) {
        return NGX_OK;
    }

    ngx_log_error(NGX_LOG_INFO, e->log, 0,
                  "exec: terminating child %ui", (ngx_int_t) e->pid);

    e->active = 0;
    close(e->pipefd);
    if (e->save_pid) {
        *e->save_pid = NGX_INVALID_PID;
    }

    if (kill_signal == 0) {
        return NGX_OK;
    }

    if (kill(e->pid, kill_signal) == -1) {
        ngx_log_error(NGX_LOG_INFO, e->log, ngx_errno,
                      "exec: kill failed pid=%i", (ngx_int_t) e->pid);
    } else {
        ngx_log_debug1(NGX_LOG_DEBUG_RTMP, e->log, 0,
                       "exec: killed pid=%i", (ngx_int_t) e->pid);
    }

    return NGX_OK;
}
