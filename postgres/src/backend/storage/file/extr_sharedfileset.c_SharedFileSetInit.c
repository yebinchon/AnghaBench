
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef int dsm_segment ;
struct TYPE_4__ {int refcnt; int number; int ntablespaces; int * tablespaces; int creator_pid; int mutex; } ;
typedef TYPE_1__ SharedFileSet ;


 int DEFAULTTABLESPACE_OID ;
 int GetTempTablespaces (int *,int ) ;
 int INT_MAX ;
 int MyProcPid ;
 int PointerGetDatum (TYPE_1__*) ;
 int PrepareTempTablespaces () ;
 int SharedFileSetOnDetach ;
 int SpinLockInit (int *) ;
 int lengthof (int *) ;
 int on_dsm_detach (int *,int ,int ) ;

void
SharedFileSetInit(SharedFileSet *fileset, dsm_segment *seg)
{
 static uint32 counter = 0;

 SpinLockInit(&fileset->mutex);
 fileset->refcnt = 1;
 fileset->creator_pid = MyProcPid;
 fileset->number = counter;
 counter = (counter + 1) % INT_MAX;


 PrepareTempTablespaces();
 fileset->ntablespaces =
  GetTempTablespaces(&fileset->tablespaces[0],
         lengthof(fileset->tablespaces));
 if (fileset->ntablespaces == 0)
 {
  fileset->tablespaces[0] = DEFAULTTABLESPACE_OID;
  fileset->ntablespaces = 1;
 }


 on_dsm_detach(seg, SharedFileSetOnDetach, PointerGetDatum(fileset));
}
