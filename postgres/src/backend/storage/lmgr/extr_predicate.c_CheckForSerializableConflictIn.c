
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int t_self; } ;
struct TYPE_7__ {int dbNode; } ;
struct TYPE_8__ {int rd_id; TYPE_1__ rd_node; } ;
typedef TYPE_2__* Relation ;
typedef int PREDICATELOCKTARGETTAG ;
typedef TYPE_3__* HeapTuple ;
typedef int Buffer ;


 int BufferGetBlockNumber (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int CheckTargetForConflictsIn (int *) ;
 int ERRCODE_T_R_SERIALIZATION_FAILURE ;
 int ERROR ;
 int ItemPointerGetBlockNumber (int *) ;
 int ItemPointerGetOffsetNumber (int *) ;
 int MySerializableXact ;
 int MyXactDidWrite ;
 int SET_PREDICATELOCKTARGETTAG_PAGE (int ,int ,int ,int ) ;
 int SET_PREDICATELOCKTARGETTAG_RELATION (int ,int ,int ) ;
 int SET_PREDICATELOCKTARGETTAG_TUPLE (int ,int ,int ,int ,int ) ;
 int SerializationNeededForWrite (TYPE_2__*) ;
 scalar_t__ SxactIsDoomed (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail_internal (char*) ;
 int errhint (char*) ;
 int errmsg (char*) ;

void
CheckForSerializableConflictIn(Relation relation, HeapTuple tuple,
          Buffer buffer)
{
 PREDICATELOCKTARGETTAG targettag;

 if (!SerializationNeededForWrite(relation))
  return;


 if (SxactIsDoomed(MySerializableXact))
  ereport(ERROR,
    (errcode(ERRCODE_T_R_SERIALIZATION_FAILURE),
     errmsg("could not serialize access due to read/write dependencies among transactions"),
     errdetail_internal("Reason code: Canceled on identification as a pivot, during conflict in checking."),
     errhint("The transaction might succeed if retried.")));





 MyXactDidWrite = 1;
 if (tuple != ((void*)0))
 {
  SET_PREDICATELOCKTARGETTAG_TUPLE(targettag,
           relation->rd_node.dbNode,
           relation->rd_id,
           ItemPointerGetBlockNumber(&(tuple->t_self)),
           ItemPointerGetOffsetNumber(&(tuple->t_self)));
  CheckTargetForConflictsIn(&targettag);
 }

 if (BufferIsValid(buffer))
 {
  SET_PREDICATELOCKTARGETTAG_PAGE(targettag,
          relation->rd_node.dbNode,
          relation->rd_id,
          BufferGetBlockNumber(buffer));
  CheckTargetForConflictsIn(&targettag);
 }

 SET_PREDICATELOCKTARGETTAG_RELATION(targettag,
          relation->rd_node.dbNode,
          relation->rd_id);
 CheckTargetForConflictsIn(&targettag);
}
