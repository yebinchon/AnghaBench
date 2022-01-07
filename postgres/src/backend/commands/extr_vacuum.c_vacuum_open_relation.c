
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int relname; } ;
typedef int * Relation ;
typedef TYPE_1__ RangeVar ;
typedef int Oid ;
typedef int LOCKMODE ;


 int Assert (int) ;
 scalar_t__ ConditionalLockRelationOid (int ,int ) ;
 int ERRCODE_LOCK_NOT_AVAILABLE ;
 int ERRCODE_UNDEFINED_TABLE ;
 int IsAutoVacuumWorkerProcess () ;
 int LOG ;
 int NoLock ;
 int VACOPT_ANALYZE ;
 int VACOPT_SKIP_LOCKED ;
 int VACOPT_VACUUM ;
 int WARNING ;
 int ereport (int,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int * try_relation_open (int ,int ) ;

Relation
vacuum_open_relation(Oid relid, RangeVar *relation, int options,
      bool verbose, LOCKMODE lmode)
{
 Relation onerel;
 bool rel_lock = 1;
 int elevel;

 Assert((options & (VACOPT_VACUUM | VACOPT_ANALYZE)) != 0);
 if (!(options & VACOPT_SKIP_LOCKED))
  onerel = try_relation_open(relid, lmode);
 else if (ConditionalLockRelationOid(relid, lmode))
  onerel = try_relation_open(relid, NoLock);
 else
 {
  onerel = ((void*)0);
  rel_lock = 0;
 }


 if (onerel)
  return onerel;
 if (relation == ((void*)0))
  return ((void*)0);
 if (!IsAutoVacuumWorkerProcess())
  elevel = WARNING;
 else if (verbose)
  elevel = LOG;
 else
  return ((void*)0);

 if ((options & VACOPT_VACUUM) != 0)
 {
  if (!rel_lock)
   ereport(elevel,
     (errcode(ERRCODE_LOCK_NOT_AVAILABLE),
      errmsg("skipping vacuum of \"%s\" --- lock not available",
       relation->relname)));
  else
   ereport(elevel,
     (errcode(ERRCODE_UNDEFINED_TABLE),
      errmsg("skipping vacuum of \"%s\" --- relation no longer exists",
       relation->relname)));






  return ((void*)0);
 }

 if ((options & VACOPT_ANALYZE) != 0)
 {
  if (!rel_lock)
   ereport(elevel,
     (errcode(ERRCODE_LOCK_NOT_AVAILABLE),
      errmsg("skipping analyze of \"%s\" --- lock not available",
       relation->relname)));
  else
   ereport(elevel,
     (errcode(ERRCODE_UNDEFINED_TABLE),
      errmsg("skipping analyze of \"%s\" --- relation no longer exists",
       relation->relname)));
 }

 return ((void*)0);
}
