
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int shmid; int data; int seg; int * xcb; } ;
typedef TYPE_1__ xcb_shm_t ;
typedef int xcb_connection_t ;


 int IPC_CREAT ;
 int IPC_PRIVATE ;
 TYPE_1__* bzalloc (int) ;
 int shmat (int,int *,int ) ;
 int shmget (int ,int const,int) ;
 int xcb_generate_id (int *) ;
 int xcb_shm_attach (int *,int ,int,int) ;
 int xshm_xcb_detach (TYPE_1__*) ;

xcb_shm_t *xshm_xcb_attach(xcb_connection_t *xcb, const int w, const int h)
{
 if (!xcb)
  return ((void*)0);

 xcb_shm_t *shm = bzalloc(sizeof(xcb_shm_t));
 shm->xcb = xcb;
 shm->seg = xcb_generate_id(shm->xcb);

 shm->shmid = shmget(IPC_PRIVATE, w * h * 4, IPC_CREAT | 0777);
 if (shm->shmid == -1)
  goto fail;

 xcb_shm_attach(shm->xcb, shm->seg, shm->shmid, 0);

 shm->data = shmat(shm->shmid, ((void*)0), 0);

 return shm;
fail:
 xshm_xcb_detach(shm);
 return ((void*)0);
}
