
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* ctx; } ;
typedef TYPE_1__ ngx_thread_task_t ;
typedef int ngx_pool_t ;


 TYPE_1__* ngx_pcalloc (int *,int) ;

ngx_thread_task_t *
ngx_thread_task_alloc(ngx_pool_t *pool, size_t size)
{
    ngx_thread_task_t *task;

    task = ngx_pcalloc(pool, sizeof(ngx_thread_task_t) + size);
    if (task == ((void*)0)) {
        return ((void*)0);
    }

    task->ctx = task + 1;

    return task;
}
