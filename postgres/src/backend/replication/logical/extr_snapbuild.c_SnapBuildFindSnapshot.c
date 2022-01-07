
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ oldestRunningXid; scalar_t__ nextXid; int xcnt; } ;
typedef TYPE_1__ xl_running_xacts ;
typedef int uint32 ;
typedef int XLogRecPtr ;
struct TYPE_10__ {scalar_t__ initial_xmin_horizon; int start_decoding_at; scalar_t__ xmin; scalar_t__ xmax; scalar_t__ state; int building_full_snapshot; } ;
typedef TYPE_2__ SnapBuild ;


 int Assert (scalar_t__) ;
 int DEBUG1 ;
 scalar_t__ InvalidTransactionId ;
 int InvalidXLogRecPtr ;
 int LOG ;
 scalar_t__ NormalTransactionIdPrecedes (scalar_t__,scalar_t__) ;
 scalar_t__ SNAPBUILD_BUILDING_SNAPSHOT ;
 void* SNAPBUILD_CONSISTENT ;
 scalar_t__ SNAPBUILD_FULL_SNAPSHOT ;
 scalar_t__ SNAPBUILD_START ;
 int SnapBuildNextPhaseAt (TYPE_2__*) ;
 scalar_t__ SnapBuildRestore (TYPE_2__*,int) ;
 int SnapBuildStartNextPhaseAt (TYPE_2__*,scalar_t__) ;
 int SnapBuildWaitSnapshot (TYPE_1__*,scalar_t__) ;
 scalar_t__ TransactionIdIsNormal (scalar_t__) ;
 scalar_t__ TransactionIdPrecedesOrEquals (int ,scalar_t__) ;
 int ereport (int ,int ) ;
 int errdetail (char*,...) ;
 int errdetail_internal (char*,scalar_t__,scalar_t__) ;
 int errmsg (char*,int ,int ) ;
 int errmsg_internal (char*,int ,int ) ;

__attribute__((used)) static bool
SnapBuildFindSnapshot(SnapBuild *builder, XLogRecPtr lsn, xl_running_xacts *running)
{
 if (TransactionIdIsNormal(builder->initial_xmin_horizon) &&
  NormalTransactionIdPrecedes(running->oldestRunningXid,
         builder->initial_xmin_horizon))
 {
  ereport(DEBUG1,
    (errmsg_internal("skipping snapshot at %X/%X while building logical decoding snapshot, xmin horizon too low",
         (uint32) (lsn >> 32), (uint32) lsn),
     errdetail_internal("initial xmin horizon of %u vs the snapshot's %u",
         builder->initial_xmin_horizon, running->oldestRunningXid)));


  SnapBuildWaitSnapshot(running, builder->initial_xmin_horizon);

  return 1;
 }
 if (running->oldestRunningXid == running->nextXid)
 {
  if (builder->start_decoding_at == InvalidXLogRecPtr ||
   builder->start_decoding_at <= lsn)

   builder->start_decoding_at = lsn + 1;


  builder->xmin = running->nextXid;
  builder->xmax = running->nextXid;


  Assert(TransactionIdIsNormal(builder->xmin));
  Assert(TransactionIdIsNormal(builder->xmax));

  builder->state = SNAPBUILD_CONSISTENT;
  SnapBuildStartNextPhaseAt(builder, InvalidTransactionId);

  ereport(LOG,
    (errmsg("logical decoding found consistent point at %X/%X",
      (uint32) (lsn >> 32), (uint32) lsn),
     errdetail("There are no running transactions.")));

  return 0;
 }

 else if (!builder->building_full_snapshot &&
    SnapBuildRestore(builder, lsn))
 {

  return 0;
 }
 else if (builder->state == SNAPBUILD_START)
 {
  builder->state = SNAPBUILD_BUILDING_SNAPSHOT;
  SnapBuildStartNextPhaseAt(builder, running->nextXid);






  builder->xmin = running->nextXid;
  builder->xmax = running->nextXid;


  Assert(TransactionIdIsNormal(builder->xmin));
  Assert(TransactionIdIsNormal(builder->xmax));

  ereport(LOG,
    (errmsg("logical decoding found initial starting point at %X/%X",
      (uint32) (lsn >> 32), (uint32) lsn),
     errdetail("Waiting for transactions (approximately %d) older than %u to end.",
         running->xcnt, running->nextXid)));

  SnapBuildWaitSnapshot(running, running->nextXid);
 }
 else if (builder->state == SNAPBUILD_BUILDING_SNAPSHOT &&
    TransactionIdPrecedesOrEquals(SnapBuildNextPhaseAt(builder),
             running->oldestRunningXid))
 {
  builder->state = SNAPBUILD_FULL_SNAPSHOT;
  SnapBuildStartNextPhaseAt(builder, running->nextXid);

  ereport(LOG,
    (errmsg("logical decoding found initial consistent point at %X/%X",
      (uint32) (lsn >> 32), (uint32) lsn),
     errdetail("Waiting for transactions (approximately %d) older than %u to end.",
         running->xcnt, running->nextXid)));

  SnapBuildWaitSnapshot(running, running->nextXid);
 }
 else if (builder->state == SNAPBUILD_FULL_SNAPSHOT &&
    TransactionIdPrecedesOrEquals(SnapBuildNextPhaseAt(builder),
             running->oldestRunningXid))
 {
  builder->state = SNAPBUILD_CONSISTENT;
  SnapBuildStartNextPhaseAt(builder, InvalidTransactionId);

  ereport(LOG,
    (errmsg("logical decoding found consistent point at %X/%X",
      (uint32) (lsn >> 32), (uint32) lsn),
     errdetail("There are no old transactions anymore.")));
 }






 return 1;

}
