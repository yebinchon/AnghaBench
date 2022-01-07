
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_sync {int child_gave_up; int sem_parent; } ;


 int perror (char*) ;
 int sem_wait (int *) ;

int wait_child(struct child_sync *sync)
{
 int ret;


 ret = sem_wait(&sync->sem_parent);
 if (ret) {
  perror("Error waiting for child");
  return 1;
 }

 return sync->child_gave_up;
}
