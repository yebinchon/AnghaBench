
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int os_sem_t ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 int INFINITE ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int ) ;

int os_sem_wait(os_sem_t *sem)
{
 DWORD ret;

 if (!sem)
  return -1;
 ret = WaitForSingleObject((HANDLE)sem, INFINITE);
 return (ret == WAIT_OBJECT_0) ? 0 : -1;
}
