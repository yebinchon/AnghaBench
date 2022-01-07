
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int os_sem_t ;
typedef int LONG ;
typedef scalar_t__ HANDLE ;


 scalar_t__ CreateSemaphore (int *,int ,int,int *) ;

int os_sem_init(os_sem_t **sem, int value)
{
 HANDLE handle = CreateSemaphore(((void*)0), (LONG)value, 0x7FFFFFFF, ((void*)0));
 if (!handle)
  return -1;

 *sem = (os_sem_t *)handle;
 return 0;
}
