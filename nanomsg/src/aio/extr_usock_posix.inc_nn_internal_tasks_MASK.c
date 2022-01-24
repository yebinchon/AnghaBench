#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nn_usock {int /*<<< orphan*/  wfd; int /*<<< orphan*/  worker; int /*<<< orphan*/  s; } ;

/* Variables and functions */
#define  NN_USOCK_SRC_TASK_ACCEPT 132 
#define  NN_USOCK_SRC_TASK_CONNECTED 131 
#define  NN_USOCK_SRC_TASK_CONNECTING 130 
#define  NN_USOCK_SRC_TASK_RECV 129 
#define  NN_USOCK_SRC_TASK_SEND 128 
 int NN_WORKER_TASK_EXECUTE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4 (struct nn_usock *usock, int src, int type)
{

/******************************************************************************/
/*  Internal tasks sent from the user thread to the worker thread.            */
/******************************************************************************/
    switch (src) {
    case NN_USOCK_SRC_TASK_SEND:
        FUNC0 (type == NN_WORKER_TASK_EXECUTE);
        FUNC3 (usock->worker, &usock->wfd);
        return 1;
    case NN_USOCK_SRC_TASK_RECV:
        FUNC0 (type == NN_WORKER_TASK_EXECUTE);
        FUNC2 (usock->worker, &usock->wfd);
        return 1;
    case NN_USOCK_SRC_TASK_CONNECTED:
        FUNC0 (type == NN_WORKER_TASK_EXECUTE);
        FUNC1 (usock->worker, usock->s, &usock->wfd);
        return 1;
    case NN_USOCK_SRC_TASK_CONNECTING:
        FUNC0 (type == NN_WORKER_TASK_EXECUTE);
        FUNC1 (usock->worker, usock->s, &usock->wfd);
        FUNC3 (usock->worker, &usock->wfd);
        return 1;
    case NN_USOCK_SRC_TASK_ACCEPT:
        FUNC0 (type == NN_WORKER_TASK_EXECUTE);
        FUNC1 (usock->worker, usock->s, &usock->wfd);
        FUNC2 (usock->worker, &usock->wfd);
        return 1;
    }

    return 0;
}