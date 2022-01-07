
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_usock {int wfd; int worker; int s; } ;







 int NN_WORKER_TASK_EXECUTE ;
 int nn_assert (int) ;
 int nn_worker_add_fd (int ,int ,int *) ;
 int nn_worker_set_in (int ,int *) ;
 int nn_worker_set_out (int ,int *) ;

__attribute__((used)) static int nn_internal_tasks (struct nn_usock *usock, int src, int type)
{




    switch (src) {
    case 128:
        nn_assert (type == NN_WORKER_TASK_EXECUTE);
        nn_worker_set_out (usock->worker, &usock->wfd);
        return 1;
    case 129:
        nn_assert (type == NN_WORKER_TASK_EXECUTE);
        nn_worker_set_in (usock->worker, &usock->wfd);
        return 1;
    case 131:
        nn_assert (type == NN_WORKER_TASK_EXECUTE);
        nn_worker_add_fd (usock->worker, usock->s, &usock->wfd);
        return 1;
    case 130:
        nn_assert (type == NN_WORKER_TASK_EXECUTE);
        nn_worker_add_fd (usock->worker, usock->s, &usock->wfd);
        nn_worker_set_out (usock->worker, &usock->wfd);
        return 1;
    case 132:
        nn_assert (type == NN_WORKER_TASK_EXECUTE);
        nn_worker_add_fd (usock->worker, usock->s, &usock->wfd);
        nn_worker_set_in (usock->worker, &usock->wfd);
        return 1;
    }

    return 0;
}
