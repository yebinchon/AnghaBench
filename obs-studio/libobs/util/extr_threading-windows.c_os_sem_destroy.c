
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int os_sem_t ;
typedef int HANDLE ;


 int CloseHandle (int ) ;

void os_sem_destroy(os_sem_t *sem)
{
 if (sem)
  CloseHandle((HANDLE)sem);
}
