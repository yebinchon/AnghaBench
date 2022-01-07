
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_22__ {scalar_t__ contype; int conislocal; int connoinherit; int coninhcount; int convalidated; } ;
struct TYPE_21__ {int t_self; } ;
struct TYPE_20__ {TYPE_1__* rd_rel; int rd_att; } ;
struct TYPE_19__ {scalar_t__ relispartition; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef TYPE_2__* Relation ;
typedef int Node ;
typedef TYPE_3__* HeapTuple ;
typedef TYPE_4__* Form_pg_constraint ;
typedef int Datum ;


 int Anum_pg_constraint_conbin ;
 int Anum_pg_constraint_conname ;
 int Anum_pg_constraint_conrelid ;
 int Anum_pg_constraint_contypid ;
 int Assert (int) ;
 int BTEqualStrategyNumber ;
 scalar_t__ CONSTRAINT_CHECK ;
 int CStringGetDatum (char const*) ;
 int CatalogTupleUpdate (TYPE_2__*,int *,TYPE_3__*) ;
 int ConstraintRelationId ;
 int ConstraintRelidTypidNameIndexId ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERRCODE_INVALID_OBJECT_DEFINITION ;
 int ERROR ;
 int F_NAMEEQ ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (TYPE_3__*) ;
 scalar_t__ HeapTupleIsValid (TYPE_3__*) ;
 int InvalidOid ;
 int NOTICE ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetRelationName (TYPE_2__*) ;
 int RelationGetRelid (TYPE_2__*) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int TextDatumGetCString (int ) ;
 int elog (int ,char*,int ) ;
 scalar_t__ equal (int *,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,...) ;
 int fastgetattr (TYPE_3__*,int ,int ,int*) ;
 TYPE_3__* heap_copytuple (TYPE_3__*) ;
 int stringToNode (int ) ;
 int systable_beginscan (TYPE_2__*,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_3__* systable_getnext (int ) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;

__attribute__((used)) static bool
MergeWithExistingConstraint(Relation rel, const char *ccname, Node *expr,
       bool allow_merge, bool is_local,
       bool is_initially_valid,
       bool is_no_inherit)
{
 bool found;
 Relation conDesc;
 SysScanDesc conscan;
 ScanKeyData skey[3];
 HeapTuple tup;


 conDesc = table_open(ConstraintRelationId, RowExclusiveLock);

 found = 0;

 ScanKeyInit(&skey[0],
    Anum_pg_constraint_conrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(RelationGetRelid(rel)));
 ScanKeyInit(&skey[1],
    Anum_pg_constraint_contypid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(InvalidOid));
 ScanKeyInit(&skey[2],
    Anum_pg_constraint_conname,
    BTEqualStrategyNumber, F_NAMEEQ,
    CStringGetDatum(ccname));

 conscan = systable_beginscan(conDesc, ConstraintRelidTypidNameIndexId, 1,
         ((void*)0), 3, skey);


 if (HeapTupleIsValid(tup = systable_getnext(conscan)))
 {
  Form_pg_constraint con = (Form_pg_constraint) GETSTRUCT(tup);


  if (con->contype == CONSTRAINT_CHECK)
  {
   Datum val;
   bool isnull;

   val = fastgetattr(tup,
         Anum_pg_constraint_conbin,
         conDesc->rd_att, &isnull);
   if (isnull)
    elog(ERROR, "null conbin for rel %s",
      RelationGetRelationName(rel));
   if (equal(expr, stringToNode(TextDatumGetCString(val))))
    found = 1;
  }
  if (is_local && !con->conislocal && !rel->rd_rel->relispartition)
   allow_merge = 1;

  if (!found || !allow_merge)
   ereport(ERROR,
     (errcode(ERRCODE_DUPLICATE_OBJECT),
      errmsg("constraint \"%s\" for relation \"%s\" already exists",
       ccname, RelationGetRelationName(rel))));


  if (con->connoinherit)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
      errmsg("constraint \"%s\" conflicts with non-inherited constraint on relation \"%s\"",
       ccname, RelationGetRelationName(rel))));






  if (con->coninhcount > 0 && is_no_inherit)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
      errmsg("constraint \"%s\" conflicts with inherited constraint on relation \"%s\"",
       ccname, RelationGetRelationName(rel))));





  if (is_initially_valid && !con->convalidated)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
      errmsg("constraint \"%s\" conflicts with NOT VALID constraint on relation \"%s\"",
       ccname, RelationGetRelationName(rel))));


  ereport(NOTICE,
    (errmsg("merging constraint \"%s\" with inherited definition",
      ccname)));

  tup = heap_copytuple(tup);
  con = (Form_pg_constraint) GETSTRUCT(tup);






  if (rel->rd_rel->relispartition)
  {
   con->coninhcount = 1;
   con->conislocal = 0;
  }
  else
  {
   if (is_local)
    con->conislocal = 1;
   else
    con->coninhcount++;
  }

  if (is_no_inherit)
  {
   Assert(is_local);
   con->connoinherit = 1;
  }

  CatalogTupleUpdate(conDesc, &tup->t_self, tup);
 }

 systable_endscan(conscan);
 table_close(conDesc, RowExclusiveLock);

 return found;
}
