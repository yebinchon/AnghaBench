
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_sync {int sem_child; int sem_parent; } ;


 int perror (char*) ;
 int sem_init (int *,int,int ) ;

int init_child_sync(struct child_sync *sync)
{
 int ret;

 ret = sem_init(&sync->sem_parent, 1, 0);
 if (ret) {
  perror("Semaphore initialization failed");
  return 1;
 }

 ret = sem_init(&sync->sem_child, 1, 0);
 if (ret) {
  perror("Semaphore initialization failed");
  return 1;
 }

 return 0;
}
