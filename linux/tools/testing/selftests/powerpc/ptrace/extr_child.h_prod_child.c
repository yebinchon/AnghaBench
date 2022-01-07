
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_sync {int sem_child; } ;


 int perror (char*) ;
 int sem_post (int *) ;

int prod_child(struct child_sync *sync)
{
 int ret;


 ret = sem_post(&sync->sem_child);
 if (ret) {
  perror("Error prodding child");
  return 1;
 }

 return 0;
}
