
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {TYPE_1__* constr; } ;
struct TYPE_16__ {void* ccbin; void* ccname; int ccnoinherit; int ccvalid; } ;
struct TYPE_15__ {scalar_t__ contype; int conname; int connoinherit; int convalidated; } ;
struct TYPE_14__ {TYPE_9__* rd_att; } ;
struct TYPE_13__ {int num_check; TYPE_4__* check; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef TYPE_2__* Relation ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_constraint ;
typedef int Datum ;
typedef TYPE_4__ ConstrCheck ;


 int AccessShareLock ;
 int Anum_pg_constraint_conbin ;
 int Anum_pg_constraint_conrelid ;
 int BTEqualStrategyNumber ;
 scalar_t__ CONSTRAINT_CHECK ;
 int CacheMemoryContext ;
 int CheckConstraintCmp ;
 int ConstraintRelationId ;
 int ConstraintRelidTypidNameIndexId ;
 int ERROR ;
 int F_OIDEQ ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 void* MemoryContextStrdup (int ,char*) ;
 char* NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetRelationName (TYPE_2__*) ;
 int RelationGetRelid (TYPE_2__*) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 char* TextDatumGetCString (int ) ;
 int elog (int ,char*,int,...) ;
 int fastgetattr (int ,int ,TYPE_9__*,int*) ;
 int pfree (char*) ;
 int qsort (TYPE_4__*,int,int,int ) ;
 int systable_beginscan (TYPE_2__*,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;

__attribute__((used)) static void
CheckConstraintFetch(Relation relation)
{
 ConstrCheck *check = relation->rd_att->constr->check;
 int ncheck = relation->rd_att->constr->num_check;
 Relation conrel;
 SysScanDesc conscan;
 ScanKeyData skey[1];
 HeapTuple htup;
 int found = 0;

 ScanKeyInit(&skey[0],
    Anum_pg_constraint_conrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(RelationGetRelid(relation)));

 conrel = table_open(ConstraintRelationId, AccessShareLock);
 conscan = systable_beginscan(conrel, ConstraintRelidTypidNameIndexId, 1,
         ((void*)0), 1, skey);

 while (HeapTupleIsValid(htup = systable_getnext(conscan)))
 {
  Form_pg_constraint conform = (Form_pg_constraint) GETSTRUCT(htup);
  Datum val;
  bool isnull;
  char *s;


  if (conform->contype != CONSTRAINT_CHECK)
   continue;

  if (found >= ncheck)
   elog(ERROR, "unexpected constraint record found for rel %s",
     RelationGetRelationName(relation));

  check[found].ccvalid = conform->convalidated;
  check[found].ccnoinherit = conform->connoinherit;
  check[found].ccname = MemoryContextStrdup(CacheMemoryContext,
              NameStr(conform->conname));


  val = fastgetattr(htup,
        Anum_pg_constraint_conbin,
        conrel->rd_att, &isnull);
  if (isnull)
   elog(ERROR, "null conbin for rel %s",
     RelationGetRelationName(relation));


  s = TextDatumGetCString(val);
  check[found].ccbin = MemoryContextStrdup(CacheMemoryContext, s);
  pfree(s);

  found++;
 }

 systable_endscan(conscan);
 table_close(conrel, AccessShareLock);

 if (found != ncheck)
  elog(ERROR, "%d constraint record(s) missing for rel %s",
    ncheck - found, RelationGetRelationName(relation));


 if (ncheck > 1)
  qsort(check, ncheck, sizeof(ConstrCheck), CheckConstraintCmp);
}
