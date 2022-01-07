
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sem_t ;


 int LOG ;
 int elog (int ,char*) ;
 scalar_t__ sem_close (int *) ;
 scalar_t__ sem_destroy (int *) ;

__attribute__((used)) static void
PosixSemaphoreKill(sem_t *sem)
{






 if (sem_destroy(sem) < 0)
  elog(LOG, "sem_destroy failed: %m");

}
