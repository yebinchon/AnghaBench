
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sem; } ;
typedef TYPE_1__ os_sem_t ;


 int sem_post (int *) ;

int os_sem_post(os_sem_t *sem)
{
 if (!sem)
  return -1;
 return sem_post(&sem->sem);
}
