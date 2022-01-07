
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int shmid; scalar_t__ data; int seg; int xcb; } ;
typedef TYPE_1__ xcb_shm_t ;


 int IPC_RMID ;
 int bfree (TYPE_1__*) ;
 int shmctl (int,int ,int *) ;
 int shmdt (scalar_t__) ;
 int xcb_shm_detach (int ,int ) ;

void xshm_xcb_detach(xcb_shm_t *shm)
{
 if (!shm)
  return;

 xcb_shm_detach(shm->xcb, shm->seg);

 if ((char *)shm->data != (char *)-1)
  shmdt(shm->data);

 if (shm->shmid != -1)
  shmctl(shm->shmid, IPC_RMID, ((void*)0));

 bfree(shm);
}
