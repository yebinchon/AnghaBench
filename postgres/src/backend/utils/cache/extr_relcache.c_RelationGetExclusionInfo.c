
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint16 ;
struct TYPE_13__ {scalar_t__ contype; scalar_t__ conindid; } ;
struct TYPE_12__ {scalar_t__* rd_exclstrats; scalar_t__* rd_exclops; scalar_t__* rd_exclprocs; int rd_indexcxt; int * rd_opfamily; int rd_att; TYPE_1__* rd_index; } ;
struct TYPE_11__ {int indrelid; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef TYPE_2__* Relation ;
typedef scalar_t__ Oid ;
typedef int MemoryContext ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_constraint ;
typedef int Datum ;
typedef int ArrayType ;


 scalar_t__* ARR_DATA_PTR (int *) ;
 int* ARR_DIMS (int *) ;
 scalar_t__ ARR_ELEMTYPE (int *) ;
 scalar_t__ ARR_HASNULL (int *) ;
 int ARR_NDIM (int *) ;
 int AccessShareLock ;
 int Anum_pg_constraint_conexclop ;
 int Anum_pg_constraint_conrelid ;
 int BTEqualStrategyNumber ;
 scalar_t__ CONSTRAINT_EXCLUSION ;
 int ConstraintRelationId ;
 int ConstraintRelidTypidNameIndexId ;
 int * DatumGetArrayTypeP (int ) ;
 int ERROR ;
 int F_OIDEQ ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int IndexRelationGetNumberOfKeyAttributes (TYPE_2__*) ;
 scalar_t__ InvalidStrategy ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ OIDOID ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetRelationName (TYPE_2__*) ;
 scalar_t__ RelationGetRelid (TYPE_2__*) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int elog (int ,char*,...) ;
 int fastgetattr (int ,int ,int ,int*) ;
 scalar_t__ get_op_opfamily_strategy (scalar_t__,int ) ;
 scalar_t__ get_opcode (scalar_t__) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 scalar_t__ palloc (int) ;
 int systable_beginscan (TYPE_2__*,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;

void
RelationGetExclusionInfo(Relation indexRelation,
       Oid **operators,
       Oid **procs,
       uint16 **strategies)
{
 int indnkeyatts;
 Oid *ops;
 Oid *funcs;
 uint16 *strats;
 Relation conrel;
 SysScanDesc conscan;
 ScanKeyData skey[1];
 HeapTuple htup;
 bool found;
 MemoryContext oldcxt;
 int i;

 indnkeyatts = IndexRelationGetNumberOfKeyAttributes(indexRelation);


 *operators = ops = (Oid *) palloc(sizeof(Oid) * indnkeyatts);
 *procs = funcs = (Oid *) palloc(sizeof(Oid) * indnkeyatts);
 *strategies = strats = (uint16 *) palloc(sizeof(uint16) * indnkeyatts);


 if (indexRelation->rd_exclstrats != ((void*)0))
 {
  memcpy(ops, indexRelation->rd_exclops, sizeof(Oid) * indnkeyatts);
  memcpy(funcs, indexRelation->rd_exclprocs, sizeof(Oid) * indnkeyatts);
  memcpy(strats, indexRelation->rd_exclstrats, sizeof(uint16) * indnkeyatts);
  return;
 }
 ScanKeyInit(&skey[0],
    Anum_pg_constraint_conrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(indexRelation->rd_index->indrelid));

 conrel = table_open(ConstraintRelationId, AccessShareLock);
 conscan = systable_beginscan(conrel, ConstraintRelidTypidNameIndexId, 1,
         ((void*)0), 1, skey);
 found = 0;

 while (HeapTupleIsValid(htup = systable_getnext(conscan)))
 {
  Form_pg_constraint conform = (Form_pg_constraint) GETSTRUCT(htup);
  Datum val;
  bool isnull;
  ArrayType *arr;
  int nelem;


  if (conform->contype != CONSTRAINT_EXCLUSION ||
   conform->conindid != RelationGetRelid(indexRelation))
   continue;


  if (found)
   elog(ERROR, "unexpected exclusion constraint record found for rel %s",
     RelationGetRelationName(indexRelation));
  found = 1;


  val = fastgetattr(htup,
        Anum_pg_constraint_conexclop,
        conrel->rd_att, &isnull);
  if (isnull)
   elog(ERROR, "null conexclop for rel %s",
     RelationGetRelationName(indexRelation));

  arr = DatumGetArrayTypeP(val);
  nelem = ARR_DIMS(arr)[0];
  if (ARR_NDIM(arr) != 1 ||
   nelem != indnkeyatts ||
   ARR_HASNULL(arr) ||
   ARR_ELEMTYPE(arr) != OIDOID)
   elog(ERROR, "conexclop is not a 1-D Oid array");

  memcpy(ops, ARR_DATA_PTR(arr), sizeof(Oid) * indnkeyatts);
 }

 systable_endscan(conscan);
 table_close(conrel, AccessShareLock);

 if (!found)
  elog(ERROR, "exclusion constraint record missing for rel %s",
    RelationGetRelationName(indexRelation));


 for (i = 0; i < indnkeyatts; i++)
 {
  funcs[i] = get_opcode(ops[i]);
  strats[i] = get_op_opfamily_strategy(ops[i],
            indexRelation->rd_opfamily[i]);

  if (strats[i] == InvalidStrategy)
   elog(ERROR, "could not find strategy for operator %u in family %u",
     ops[i], indexRelation->rd_opfamily[i]);
 }


 oldcxt = MemoryContextSwitchTo(indexRelation->rd_indexcxt);
 indexRelation->rd_exclops = (Oid *) palloc(sizeof(Oid) * indnkeyatts);
 indexRelation->rd_exclprocs = (Oid *) palloc(sizeof(Oid) * indnkeyatts);
 indexRelation->rd_exclstrats = (uint16 *) palloc(sizeof(uint16) * indnkeyatts);
 memcpy(indexRelation->rd_exclops, ops, sizeof(Oid) * indnkeyatts);
 memcpy(indexRelation->rd_exclprocs, funcs, sizeof(Oid) * indnkeyatts);
 memcpy(indexRelation->rd_exclstrats, strats, sizeof(uint16) * indnkeyatts);
 MemoryContextSwitchTo(oldcxt);
}
