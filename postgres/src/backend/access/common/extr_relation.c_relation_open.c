
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;
typedef scalar_t__ LOCKMODE ;


 int AccessShareLock ;
 int Assert (int) ;
 scalar_t__ CheckRelationLockedByMe (int ,int ,int) ;
 int ERROR ;
 scalar_t__ IsBootstrapProcessingMode () ;
 int LockRelationOid (int ,scalar_t__) ;
 scalar_t__ MAX_LOCKMODES ;
 int MyXactFlags ;
 scalar_t__ NoLock ;
 int RelationIdGetRelation (int ) ;
 int RelationIsValid (int ) ;
 scalar_t__ RelationUsesLocalBuffers (int ) ;
 int XACT_FLAGS_ACCESSEDTEMPNAMESPACE ;
 int elog (int ,char*,int ) ;
 int pgstat_initstats (int ) ;

Relation
relation_open(Oid relationId, LOCKMODE lockmode)
{
 Relation r;

 Assert(lockmode >= NoLock && lockmode < MAX_LOCKMODES);


 if (lockmode != NoLock)
  LockRelationOid(relationId, lockmode);


 r = RelationIdGetRelation(relationId);

 if (!RelationIsValid(r))
  elog(ERROR, "could not open relation with OID %u", relationId);





 Assert(lockmode != NoLock ||
     IsBootstrapProcessingMode() ||
     CheckRelationLockedByMe(r, AccessShareLock, 1));


 if (RelationUsesLocalBuffers(r))
  MyXactFlags |= XACT_FLAGS_ACCESSEDTEMPNAMESPACE;

 pgstat_initstats(r);

 return r;
}
