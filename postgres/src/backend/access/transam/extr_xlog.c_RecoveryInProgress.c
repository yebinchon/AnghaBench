
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int SharedRecoveryInProgress; } ;
typedef TYPE_1__ XLogCtlData ;


 int InitXLOGAccess () ;
 int LocalRecoveryInProgress ;
 TYPE_1__* XLogCtl ;
 int pg_memory_barrier () ;

bool
RecoveryInProgress(void)
{





 if (!LocalRecoveryInProgress)
  return 0;
 else
 {




  volatile XLogCtlData *xlogctl = XLogCtl;

  LocalRecoveryInProgress = xlogctl->SharedRecoveryInProgress;







  if (!LocalRecoveryInProgress)
  {





   pg_memory_barrier();
   InitXLOGAccess();
  }







  return LocalRecoveryInProgress;
 }
}
