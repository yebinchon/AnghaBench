
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * values; } ;
typedef TYPE_1__ oidvector ;
typedef int nulls ;
typedef TYPE_1__ int2vector ;
typedef int int16 ;
struct TYPE_9__ {int ii_NumIndexAttrs; int ii_NumIndexKeyAttrs; scalar_t__ ii_Expressions; scalar_t__ ii_Predicate; int ii_Unique; int * ii_IndexAttrNumbers; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_3__ IndexInfo ;
typedef int HeapTuple ;
typedef scalar_t__ Datum ;


 int Anum_pg_index_indcheckxmin ;
 int Anum_pg_index_indclass ;
 int Anum_pg_index_indcollation ;
 int Anum_pg_index_indexprs ;
 int Anum_pg_index_indexrelid ;
 int Anum_pg_index_indimmediate ;
 int Anum_pg_index_indisclustered ;
 int Anum_pg_index_indisexclusion ;
 int Anum_pg_index_indislive ;
 int Anum_pg_index_indisprimary ;
 int Anum_pg_index_indisready ;
 int Anum_pg_index_indisreplident ;
 int Anum_pg_index_indisunique ;
 int Anum_pg_index_indisvalid ;
 int Anum_pg_index_indkey ;
 int Anum_pg_index_indnatts ;
 int Anum_pg_index_indnkeyatts ;
 int Anum_pg_index_indoption ;
 int Anum_pg_index_indpred ;
 int Anum_pg_index_indrelid ;
 scalar_t__ BoolGetDatum (int) ;
 scalar_t__ CStringGetTextDatum (char*) ;
 int CatalogTupleInsert (int ,int ) ;
 int IndexRelationId ;
 scalar_t__ Int16GetDatum (int) ;
 int MemSet (int*,int,int) ;
 scalar_t__ NIL ;
 int Natts_pg_index ;
 scalar_t__ ObjectIdGetDatum (int ) ;
 scalar_t__ PointerGetDatum (TYPE_1__*) ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 TYPE_1__* buildint2vector (int *,int) ;
 TYPE_1__* buildoidvector (int *,int) ;
 int heap_form_tuple (int ,scalar_t__*,int*) ;
 int heap_freetuple (int ) ;
 scalar_t__ make_ands_explicit (scalar_t__) ;
 char* nodeToString (scalar_t__) ;
 int pfree (char*) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
UpdateIndexRelation(Oid indexoid,
     Oid heapoid,
     Oid parentIndexId,
     IndexInfo *indexInfo,
     Oid *collationOids,
     Oid *classOids,
     int16 *coloptions,
     bool primary,
     bool isexclusion,
     bool immediate,
     bool isvalid,
     bool isready)
{
 int2vector *indkey;
 oidvector *indcollation;
 oidvector *indclass;
 int2vector *indoption;
 Datum exprsDatum;
 Datum predDatum;
 Datum values[Natts_pg_index];
 bool nulls[Natts_pg_index];
 Relation pg_index;
 HeapTuple tuple;
 int i;





 indkey = buildint2vector(((void*)0), indexInfo->ii_NumIndexAttrs);
 for (i = 0; i < indexInfo->ii_NumIndexAttrs; i++)
  indkey->values[i] = indexInfo->ii_IndexAttrNumbers[i];
 indcollation = buildoidvector(collationOids, indexInfo->ii_NumIndexKeyAttrs);
 indclass = buildoidvector(classOids, indexInfo->ii_NumIndexKeyAttrs);
 indoption = buildint2vector(coloptions, indexInfo->ii_NumIndexKeyAttrs);




 if (indexInfo->ii_Expressions != NIL)
 {
  char *exprsString;

  exprsString = nodeToString(indexInfo->ii_Expressions);
  exprsDatum = CStringGetTextDatum(exprsString);
  pfree(exprsString);
 }
 else
  exprsDatum = (Datum) 0;





 if (indexInfo->ii_Predicate != NIL)
 {
  char *predString;

  predString = nodeToString(make_ands_explicit(indexInfo->ii_Predicate));
  predDatum = CStringGetTextDatum(predString);
  pfree(predString);
 }
 else
  predDatum = (Datum) 0;




 pg_index = table_open(IndexRelationId, RowExclusiveLock);




 MemSet(nulls, 0, sizeof(nulls));

 values[Anum_pg_index_indexrelid - 1] = ObjectIdGetDatum(indexoid);
 values[Anum_pg_index_indrelid - 1] = ObjectIdGetDatum(heapoid);
 values[Anum_pg_index_indnatts - 1] = Int16GetDatum(indexInfo->ii_NumIndexAttrs);
 values[Anum_pg_index_indnkeyatts - 1] = Int16GetDatum(indexInfo->ii_NumIndexKeyAttrs);
 values[Anum_pg_index_indisunique - 1] = BoolGetDatum(indexInfo->ii_Unique);
 values[Anum_pg_index_indisprimary - 1] = BoolGetDatum(primary);
 values[Anum_pg_index_indisexclusion - 1] = BoolGetDatum(isexclusion);
 values[Anum_pg_index_indimmediate - 1] = BoolGetDatum(immediate);
 values[Anum_pg_index_indisclustered - 1] = BoolGetDatum(0);
 values[Anum_pg_index_indisvalid - 1] = BoolGetDatum(isvalid);
 values[Anum_pg_index_indcheckxmin - 1] = BoolGetDatum(0);
 values[Anum_pg_index_indisready - 1] = BoolGetDatum(isready);
 values[Anum_pg_index_indislive - 1] = BoolGetDatum(1);
 values[Anum_pg_index_indisreplident - 1] = BoolGetDatum(0);
 values[Anum_pg_index_indkey - 1] = PointerGetDatum(indkey);
 values[Anum_pg_index_indcollation - 1] = PointerGetDatum(indcollation);
 values[Anum_pg_index_indclass - 1] = PointerGetDatum(indclass);
 values[Anum_pg_index_indoption - 1] = PointerGetDatum(indoption);
 values[Anum_pg_index_indexprs - 1] = exprsDatum;
 if (exprsDatum == (Datum) 0)
  nulls[Anum_pg_index_indexprs - 1] = 1;
 values[Anum_pg_index_indpred - 1] = predDatum;
 if (predDatum == (Datum) 0)
  nulls[Anum_pg_index_indpred - 1] = 1;

 tuple = heap_form_tuple(RelationGetDescr(pg_index), values, nulls);




 CatalogTupleInsert(pg_index, tuple);




 table_close(pg_index, RowExclusiveLock);
 heap_freetuple(tuple);
}
