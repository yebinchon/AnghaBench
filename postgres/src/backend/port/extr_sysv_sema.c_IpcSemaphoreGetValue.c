
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union semun {scalar_t__ val; } ;
typedef int IpcSemaphoreId ;


 int GETVAL ;
 int semctl (int ,int,int ,union semun) ;

__attribute__((used)) static int
IpcSemaphoreGetValue(IpcSemaphoreId semId, int semNum)
{
 union semun dummy;

 dummy.val = 0;

 return semctl(semId, semNum, GETVAL, dummy);
}
