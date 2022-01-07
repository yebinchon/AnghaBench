
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_worker {int thread; int timerset; int efd_hndl; int poller; int efd; int stop; int tasks; int sync; } ;


 int nn_efd_getfd (int *) ;
 int nn_efd_init (int *) ;
 int nn_mutex_init (int *) ;
 int nn_poller_add (int *,int ,int *) ;
 int nn_poller_init (int *) ;
 int nn_poller_set_in (int *,int *) ;
 int nn_queue_init (int *) ;
 int nn_queue_item_init (int *) ;
 int nn_thread_init (int *,int ,struct nn_worker*) ;
 int nn_timerset_init (int *) ;
 int nn_worker_routine ;

int nn_worker_init (struct nn_worker *self)
{
    int rc;

    rc = nn_efd_init (&self->efd);
    if (rc < 0)
        return rc;

    nn_mutex_init (&self->sync);
    nn_queue_init (&self->tasks);
    nn_queue_item_init (&self->stop);
    nn_poller_init (&self->poller);
    nn_poller_add (&self->poller, nn_efd_getfd (&self->efd), &self->efd_hndl);
    nn_poller_set_in (&self->poller, &self->efd_hndl);
    nn_timerset_init (&self->timerset);
    nn_thread_init (&self->thread, nn_worker_routine, self);

    return 0;
}
