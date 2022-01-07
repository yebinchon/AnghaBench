
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_sync {int parent_gave_up; int sem_child; } ;


 int perror (char*) ;
 int sem_wait (int *) ;

int wait_parent(struct child_sync *sync)
{
 int ret;


 ret = sem_wait(&sync->sem_child);
 if (ret) {
  perror("Error waiting for parent");
  return 1;
 }

 return sync->parent_gave_up;
}
