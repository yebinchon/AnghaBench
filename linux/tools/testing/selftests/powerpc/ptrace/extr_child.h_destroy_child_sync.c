
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_sync {int sem_child; int sem_parent; } ;


 int sem_destroy (int *) ;

void destroy_child_sync(struct child_sync *sync)
{
 sem_destroy(&sync->sem_parent);
 sem_destroy(&sync->sem_child);
}
