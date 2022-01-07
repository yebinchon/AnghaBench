
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sem; } ;
typedef TYPE_1__ os_sem_t ;


 int bfree (TYPE_1__*) ;
 int sem_destroy (int *) ;

void os_sem_destroy(os_sem_t *sem)
{
 if (sem) {
  sem_destroy(&sem->sem);
  bfree(sem);
 }
}
