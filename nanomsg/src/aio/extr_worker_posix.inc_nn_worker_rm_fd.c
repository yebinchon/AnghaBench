
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_worker_fd {int hndl; } ;
struct nn_worker {int poller; } ;


 int nn_poller_rm (int *,int *) ;

void nn_worker_rm_fd (struct nn_worker *self, struct nn_worker_fd *fd)
{
    nn_poller_rm (&self->poller, &fd->hndl);
}
