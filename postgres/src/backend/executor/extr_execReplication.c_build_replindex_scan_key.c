
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int * values; } ;
typedef TYPE_2__ oidvector ;
struct TYPE_17__ {int* values; } ;
typedef TYPE_3__ int2vector ;
struct TYPE_18__ {scalar_t__* tts_isnull; int * tts_values; } ;
typedef TYPE_4__ TupleTableSlot ;
struct TYPE_20__ {int * rd_indcollation; int rd_indextuple; TYPE_1__* rd_index; } ;
struct TYPE_19__ {int sk_flags; int sk_collation; } ;
struct TYPE_15__ {TYPE_3__ indkey; } ;
typedef TYPE_5__* ScanKey ;
typedef TYPE_6__* Relation ;
typedef int RegProcedure ;
typedef int Oid ;
typedef int Datum ;


 int Anum_pg_index_indclass ;
 int Assert (int) ;
 int BTEqualStrategyNumber ;
 scalar_t__ DatumGetPointer (int ) ;
 int ERROR ;
 int INDEXRELID ;
 int IndexRelationGetNumberOfKeyAttributes (TYPE_6__*) ;
 int OidIsValid (int ) ;
 scalar_t__ RelationGetRelid (TYPE_6__*) ;
 scalar_t__ RelationGetReplicaIndex (TYPE_6__*) ;
 int SK_ISNULL ;
 int ScanKeyInit (TYPE_5__*,int,int ,int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int elog (int ,char*,int ,int ,int ,int ) ;
 int get_opclass_family (int ) ;
 int get_opclass_input_type (int ) ;
 int get_opcode (int ) ;
 int get_opfamily_member (int ,int ,int ,int ) ;

__attribute__((used)) static bool
build_replindex_scan_key(ScanKey skey, Relation rel, Relation idxrel,
       TupleTableSlot *searchslot)
{
 int attoff;
 bool isnull;
 Datum indclassDatum;
 oidvector *opclass;
 int2vector *indkey = &idxrel->rd_index->indkey;
 bool hasnulls = 0;

 Assert(RelationGetReplicaIndex(rel) == RelationGetRelid(idxrel));

 indclassDatum = SysCacheGetAttr(INDEXRELID, idxrel->rd_indextuple,
         Anum_pg_index_indclass, &isnull);
 Assert(!isnull);
 opclass = (oidvector *) DatumGetPointer(indclassDatum);


 for (attoff = 0; attoff < IndexRelationGetNumberOfKeyAttributes(idxrel); attoff++)
 {
  Oid operator;
  Oid opfamily;
  RegProcedure regop;
  int pkattno = attoff + 1;
  int mainattno = indkey->values[attoff];
  Oid optype = get_opclass_input_type(opclass->values[attoff]);





  opfamily = get_opclass_family(opclass->values[attoff]);

  operator = get_opfamily_member(opfamily, optype,
            optype,
            BTEqualStrategyNumber);
  if (!OidIsValid(operator))
   elog(ERROR, "missing operator %d(%u,%u) in opfamily %u",
     BTEqualStrategyNumber, optype, optype, opfamily);

  regop = get_opcode(operator);


  ScanKeyInit(&skey[attoff],
     pkattno,
     BTEqualStrategyNumber,
     regop,
     searchslot->tts_values[mainattno - 1]);

  skey[attoff].sk_collation = idxrel->rd_indcollation[attoff];


  if (searchslot->tts_isnull[mainattno - 1])
  {
   hasnulls = 1;
   skey[attoff].sk_flags |= SK_ISNULL;
  }
 }

 return hasnulls;
}
