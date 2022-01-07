
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dsm_segment ;
struct TYPE_4__ {scalar_t__ refcnt; int mutex; } ;
typedef TYPE_1__ SharedFileSet ;


 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int PointerGetDatum (TYPE_1__*) ;
 int SharedFileSetOnDetach ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int on_dsm_detach (int *,int ,int ) ;

void
SharedFileSetAttach(SharedFileSet *fileset, dsm_segment *seg)
{
 bool success;

 SpinLockAcquire(&fileset->mutex);
 if (fileset->refcnt == 0)
  success = 0;
 else
 {
  ++fileset->refcnt;
  success = 1;
 }
 SpinLockRelease(&fileset->mutex);

 if (!success)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("could not attach to a SharedFileSet that is already destroyed")));


 on_dsm_detach(seg, SharedFileSetOnDetach, PointerGetDatum(fileset));
}
