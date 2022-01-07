
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sem_t ;


 int FATAL ;
 int elog (int ,char*) ;
 scalar_t__ sem_init (int *,int,int) ;

__attribute__((used)) static void
PosixSemaphoreCreate(sem_t *sem)
{
 if (sem_init(sem, 1, 1) < 0)
  elog(FATAL, "sem_init failed: %m");
}
