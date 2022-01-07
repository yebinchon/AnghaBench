
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int inhrelid; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int List ;
typedef int LOCKMODE ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_inherits ;


 int AccessShareLock ;
 int Anum_pg_inherits_inhparent ;
 int BTEqualStrategyNumber ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int *) ;
 int InheritsParentIndexId ;
 int InheritsRelationId ;
 int LockRelationOid (int ,int ) ;
 int * NIL ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 int RELOID ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SearchSysCacheExists1 (int ,int ) ;
 int UnlockRelationOid (int ,int ) ;
 int has_subclass (int ) ;
 int * lappend_oid (int *,int ) ;
 int oid_cmp ;
 scalar_t__ palloc (int) ;
 int pfree (int *) ;
 int qsort (int *,int,int,int ) ;
 scalar_t__ repalloc (int *,int) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int * systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

List *
find_inheritance_children(Oid parentrelId, LOCKMODE lockmode)
{
 List *list = NIL;
 Relation relation;
 SysScanDesc scan;
 ScanKeyData key[1];
 HeapTuple inheritsTuple;
 Oid inhrelid;
 Oid *oidarr;
 int maxoids,
    numoids,
    i;





 if (!has_subclass(parentrelId))
  return NIL;




 maxoids = 32;
 oidarr = (Oid *) palloc(maxoids * sizeof(Oid));
 numoids = 0;

 relation = table_open(InheritsRelationId, AccessShareLock);

 ScanKeyInit(&key[0],
    Anum_pg_inherits_inhparent,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(parentrelId));

 scan = systable_beginscan(relation, InheritsParentIndexId, 1,
         ((void*)0), 1, key);

 while ((inheritsTuple = systable_getnext(scan)) != ((void*)0))
 {
  inhrelid = ((Form_pg_inherits) GETSTRUCT(inheritsTuple))->inhrelid;
  if (numoids >= maxoids)
  {
   maxoids *= 2;
   oidarr = (Oid *) repalloc(oidarr, maxoids * sizeof(Oid));
  }
  oidarr[numoids++] = inhrelid;
 }

 systable_endscan(scan);

 table_close(relation, AccessShareLock);







 if (numoids > 1)
  qsort(oidarr, numoids, sizeof(Oid), oid_cmp);




 for (i = 0; i < numoids; i++)
 {
  inhrelid = oidarr[i];

  if (lockmode != NoLock)
  {

   LockRelationOid(inhrelid, lockmode);






   if (!SearchSysCacheExists1(RELOID, ObjectIdGetDatum(inhrelid)))
   {

    UnlockRelationOid(inhrelid, lockmode);

    continue;
   }
  }

  list = lappend_oid(list, inhrelid);
 }

 pfree(oidarr);

 return list;
}
