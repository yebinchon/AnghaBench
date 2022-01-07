
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int LockWaitPolicy ;
typedef int LockTupleMode ;
typedef int ItemPointer ;


 int ConditionalLockTupleTuplock (int ,int ,int ) ;
 int ERRCODE_LOCK_NOT_AVAILABLE ;
 int ERROR ;
 int LockTupleTuplock (int ,int ,int ) ;



 int RelationGetRelationName (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;

__attribute__((used)) static bool
heap_acquire_tuplock(Relation relation, ItemPointer tid, LockTupleMode mode,
      LockWaitPolicy wait_policy, bool *have_tuple_lock)
{
 if (*have_tuple_lock)
  return 1;

 switch (wait_policy)
 {
  case 130:
   LockTupleTuplock(relation, tid, mode);
   break;

  case 128:
   if (!ConditionalLockTupleTuplock(relation, tid, mode))
    return 0;
   break;

  case 129:
   if (!ConditionalLockTupleTuplock(relation, tid, mode))
    ereport(ERROR,
      (errcode(ERRCODE_LOCK_NOT_AVAILABLE),
       errmsg("could not obtain lock on row in relation \"%s\"",
        RelationGetRelationName(relation))));
   break;
 }
 *have_tuple_lock = 1;

 return 1;
}
