
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int os_sem_t ;
typedef int HANDLE ;


 scalar_t__ ReleaseSemaphore (int ,int,int *) ;

int os_sem_post(os_sem_t *sem)
{
 if (!sem)
  return -1;
 return ReleaseSemaphore((HANDLE)sem, 1, ((void*)0)) ? 0 : -1;
}
