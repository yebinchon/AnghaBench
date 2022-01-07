
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_worker {int sync; int tasks; int stop; int efd; int poller; int timerset; int thread; } ;


 int nn_efd_signal (int *) ;
 int nn_efd_term (int *) ;
 int nn_mutex_lock (int *) ;
 int nn_mutex_term (int *) ;
 int nn_mutex_unlock (int *) ;
 int nn_poller_term (int *) ;
 int nn_queue_item_term (int *) ;
 int nn_queue_push (int *,int *) ;
 int nn_queue_term (int *) ;
 int nn_thread_term (int *) ;
 int nn_timerset_term (int *) ;

void nn_worker_term (struct nn_worker *self)
{

    nn_mutex_lock (&self->sync);
    nn_queue_push (&self->tasks, &self->stop);
    nn_efd_signal (&self->efd);
    nn_mutex_unlock (&self->sync);


    nn_thread_term (&self->thread);


    nn_timerset_term (&self->timerset);
    nn_poller_term (&self->poller);
    nn_efd_term (&self->efd);
    nn_queue_item_term (&self->stop);
    nn_queue_term (&self->tasks);
    nn_mutex_term (&self->sync);
}
