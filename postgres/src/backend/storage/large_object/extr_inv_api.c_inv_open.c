
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; int flags; int * snapshot; scalar_t__ offset; int subid; } ;
typedef int * Snapshot ;
typedef int Oid ;
typedef int MemoryContext ;
typedef TYPE_1__ LargeObjectDesc ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_SELECT ;
 int ACL_UPDATE ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int * GetActiveSnapshot () ;
 int GetCurrentSubTransactionId () ;
 int GetUserId () ;
 int IFS_RDLOCK ;
 int IFS_WRLOCK ;
 int INV_READ ;
 int INV_WRITE ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 int * RegisterSnapshotOnOwner (int *,int ) ;
 int TopTransactionResourceOwner ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int) ;
 int lo_compat_privileges ;
 int myLargeObjectExists (int,int *) ;
 scalar_t__ pg_largeobject_aclcheck_snapshot (int,int ,int ,int *) ;

LargeObjectDesc *
inv_open(Oid lobjId, int flags, MemoryContext mcxt)
{
 LargeObjectDesc *retval;
 Snapshot snapshot = ((void*)0);
 int descflags = 0;






 if (flags & INV_WRITE)
  descflags |= IFS_WRLOCK | IFS_RDLOCK;
 if (flags & INV_READ)
  descflags |= IFS_RDLOCK;

 if (descflags == 0)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("invalid flags for opening a large object: %d",
      flags)));


 if (descflags & IFS_WRLOCK)
  snapshot = ((void*)0);
 else
  snapshot = GetActiveSnapshot();


 if (!myLargeObjectExists(lobjId, snapshot))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("large object %u does not exist", lobjId)));


 if ((descflags & IFS_RDLOCK) != 0)
 {
  if (!lo_compat_privileges &&
   pg_largeobject_aclcheck_snapshot(lobjId,
            GetUserId(),
            ACL_SELECT,
            snapshot) != ACLCHECK_OK)
   ereport(ERROR,
     (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
      errmsg("permission denied for large object %u",
       lobjId)));
 }
 if ((descflags & IFS_WRLOCK) != 0)
 {
  if (!lo_compat_privileges &&
   pg_largeobject_aclcheck_snapshot(lobjId,
            GetUserId(),
            ACL_UPDATE,
            snapshot) != ACLCHECK_OK)
   ereport(ERROR,
     (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
      errmsg("permission denied for large object %u",
       lobjId)));
 }


 retval = (LargeObjectDesc *) MemoryContextAlloc(mcxt,
             sizeof(LargeObjectDesc));
 retval->id = lobjId;
 retval->subid = GetCurrentSubTransactionId();
 retval->offset = 0;
 retval->flags = descflags;







 if (snapshot)
  snapshot = RegisterSnapshotOnOwner(snapshot,
             TopTransactionResourceOwner);
 retval->snapshot = snapshot;

 return retval;
}
