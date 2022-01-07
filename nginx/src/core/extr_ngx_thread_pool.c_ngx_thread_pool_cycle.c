
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sigset_t ;
struct TYPE_6__ {struct TYPE_6__* next; int id; int ctx; int (* handler ) (int ,int ) ;} ;
typedef TYPE_2__ ngx_thread_task_t ;
struct TYPE_5__ {TYPE_2__* first; TYPE_2__** last; } ;
struct TYPE_7__ {int name; int log; int mtx; TYPE_1__ queue; int cond; int waiting; } ;
typedef TYPE_3__ ngx_thread_pool_t ;
struct TYPE_8__ {TYPE_2__** last; } ;


 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_CORE ;
 scalar_t__ NGX_OK ;
 int SIGBUS ;
 int SIGFPE ;
 int SIGILL ;
 int SIGSEGV ;
 int SIG_BLOCK ;
 int ngx_log_debug1 (int ,int ,int ,char*,int *) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,int *) ;
 int ngx_log_error (int ,int ,int,char*) ;
 int ngx_memory_barrier () ;
 int ngx_notify (int ) ;
 int ngx_spinlock (int *,int,int) ;
 scalar_t__ ngx_thread_cond_wait (int *,int *,int ) ;
 scalar_t__ ngx_thread_mutex_lock (int *,int ) ;
 scalar_t__ ngx_thread_mutex_unlock (int *,int ) ;
 TYPE_4__ ngx_thread_pool_done ;
 int ngx_thread_pool_done_lock ;
 int ngx_thread_pool_handler ;
 int ngx_time_update () ;
 int ngx_unlock (int *) ;
 int pthread_sigmask (int ,int *,int *) ;
 int sigdelset (int *,int ) ;
 int sigfillset (int *) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void *
ngx_thread_pool_cycle(void *data)
{
    ngx_thread_pool_t *tp = data;

    int err;
    sigset_t set;
    ngx_thread_task_t *task;





    ngx_log_debug1(NGX_LOG_DEBUG_CORE, tp->log, 0,
                   "thread in pool \"%V\" started", &tp->name);

    sigfillset(&set);

    sigdelset(&set, SIGILL);
    sigdelset(&set, SIGFPE);
    sigdelset(&set, SIGSEGV);
    sigdelset(&set, SIGBUS);

    err = pthread_sigmask(SIG_BLOCK, &set, ((void*)0));
    if (err) {
        ngx_log_error(NGX_LOG_ALERT, tp->log, err, "pthread_sigmask() failed");
        return ((void*)0);
    }

    for ( ;; ) {
        if (ngx_thread_mutex_lock(&tp->mtx, tp->log) != NGX_OK) {
            return ((void*)0);
        }


        tp->waiting--;

        while (tp->queue.first == ((void*)0)) {
            if (ngx_thread_cond_wait(&tp->cond, &tp->mtx, tp->log)
                != NGX_OK)
            {
                (void) ngx_thread_mutex_unlock(&tp->mtx, tp->log);
                return ((void*)0);
            }
        }

        task = tp->queue.first;
        tp->queue.first = task->next;

        if (tp->queue.first == ((void*)0)) {
            tp->queue.last = &tp->queue.first;
        }

        if (ngx_thread_mutex_unlock(&tp->mtx, tp->log) != NGX_OK) {
            return ((void*)0);
        }





        ngx_log_debug2(NGX_LOG_DEBUG_CORE, tp->log, 0,
                       "run task #%ui in thread pool \"%V\"",
                       task->id, &tp->name);

        task->handler(task->ctx, tp->log);

        ngx_log_debug2(NGX_LOG_DEBUG_CORE, tp->log, 0,
                       "complete task #%ui in thread pool \"%V\"",
                       task->id, &tp->name);

        task->next = ((void*)0);

        ngx_spinlock(&ngx_thread_pool_done_lock, 1, 2048);

        *ngx_thread_pool_done.last = task;
        ngx_thread_pool_done.last = &task->next;

        ngx_memory_barrier();

        ngx_unlock(&ngx_thread_pool_done_lock);

        (void) ngx_notify(ngx_thread_pool_handler);
    }
}
