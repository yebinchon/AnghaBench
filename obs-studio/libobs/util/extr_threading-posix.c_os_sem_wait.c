
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sem; } ;
typedef TYPE_1__ os_sem_t ;


 int sem_wait (int *) ;

int os_sem_wait(os_sem_t *sem)
{
 if (!sem)
  return -1;
 return sem_wait(&sem->sem);
}
