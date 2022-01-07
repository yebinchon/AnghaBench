
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_worker_fd {int hndl; } ;
struct nn_worker {int poller; } ;


 int nn_poller_set_in (int *,int *) ;

void nn_worker_set_in (struct nn_worker *self, struct nn_worker_fd *fd)
{
    nn_poller_set_in (&self->poller, &fd->hndl);
}
