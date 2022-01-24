#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int complete; int /*<<< orphan*/  (* handler ) (TYPE_2__*) ;scalar_t__ active; int /*<<< orphan*/  log; } ;
struct TYPE_6__ {struct TYPE_6__* next; TYPE_2__ event; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ ngx_thread_task_t ;
typedef  TYPE_2__ ngx_event_t ;
struct TYPE_8__ {TYPE_1__* first; TYPE_1__** last; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_CORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_5__ ngx_thread_pool_done ; 
 int /*<<< orphan*/  ngx_thread_pool_done_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC6(ngx_event_t *ev)
{
    ngx_event_t        *event;
    ngx_thread_task_t  *task;

    FUNC0(NGX_LOG_DEBUG_CORE, ev->log, 0, "thread pool handler");

    FUNC3(&ngx_thread_pool_done_lock, 1, 2048);

    task = ngx_thread_pool_done.first;
    ngx_thread_pool_done.first = NULL;
    ngx_thread_pool_done.last = &ngx_thread_pool_done.first;

    FUNC2();

    FUNC4(&ngx_thread_pool_done_lock);

    while (task) {
        FUNC1(NGX_LOG_DEBUG_CORE, ev->log, 0,
                       "run completion handler for task #%ui", task->id);

        event = &task->event;
        task = task->next;

        event->complete = 1;
        event->active = 0;

        event->handler(event);
    }
}