
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dsm_segment ;
struct TYPE_3__ {scalar_t__ refcnt; int mutex; } ;
typedef TYPE_1__ SharedFileSet ;
typedef int Datum ;


 int Assert (int) ;
 scalar_t__ DatumGetPointer (int ) ;
 int SharedFileSetDeleteAll (TYPE_1__*) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

__attribute__((used)) static void
SharedFileSetOnDetach(dsm_segment *segment, Datum datum)
{
 bool unlink_all = 0;
 SharedFileSet *fileset = (SharedFileSet *) DatumGetPointer(datum);

 SpinLockAcquire(&fileset->mutex);
 Assert(fileset->refcnt > 0);
 if (--fileset->refcnt == 0)
  unlink_all = 1;
 SpinLockRelease(&fileset->mutex);






 if (unlink_all)
  SharedFileSetDeleteAll(fileset);
}
