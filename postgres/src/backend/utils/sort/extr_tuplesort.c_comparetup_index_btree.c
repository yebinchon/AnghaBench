
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_12__ {int nKeys; int indexRel; int heapRel; scalar_t__ enforceUnique; TYPE_3__* sortKeys; } ;
typedef TYPE_1__ Tuplesortstate ;
typedef int TupleDesc ;
struct TYPE_15__ {int t_tid; } ;
struct TYPE_14__ {scalar_t__ abbrev_converter; } ;
struct TYPE_13__ {int isnull1; scalar_t__ tuple; int datum1; } ;
typedef TYPE_2__ SortTuple ;
typedef TYPE_3__* SortSupport ;
typedef scalar_t__ OffsetNumber ;
typedef TYPE_4__* IndexTuple ;
typedef int Datum ;
typedef scalar_t__ BlockNumber ;


 scalar_t__ ApplySortAbbrevFullComparator (int ,int,int ,int,TYPE_3__*) ;
 scalar_t__ ApplySortComparator (int ,int,int ,int,TYPE_3__*) ;
 int Assert (int) ;
 char* BuildIndexValueDescription (int ,int *,int*) ;
 int ERRCODE_UNIQUE_VIOLATION ;
 int ERROR ;
 int INDEX_MAX_KEYS ;
 scalar_t__ ItemPointerGetBlockNumber (int *) ;
 scalar_t__ ItemPointerGetOffsetNumber (int *) ;
 int RelationGetDescr (int ) ;
 int RelationGetRelationName (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,...) ;
 int errmsg (char*,int ) ;
 int errtableconstraint (int ,int ) ;
 int index_deform_tuple (TYPE_4__*,int ,int *,int*) ;
 int index_getattr (TYPE_4__*,int,int ,int*) ;

__attribute__((used)) static int
comparetup_index_btree(const SortTuple *a, const SortTuple *b,
        Tuplesortstate *state)
{





 SortSupport sortKey = state->sortKeys;
 IndexTuple tuple1;
 IndexTuple tuple2;
 int keysz;
 TupleDesc tupDes;
 bool equal_hasnull = 0;
 int nkey;
 int32 compare;
 Datum datum1,
    datum2;
 bool isnull1,
    isnull2;



 compare = ApplySortComparator(a->datum1, a->isnull1,
          b->datum1, b->isnull1,
          sortKey);
 if (compare != 0)
  return compare;


 tuple1 = (IndexTuple) a->tuple;
 tuple2 = (IndexTuple) b->tuple;
 keysz = state->nKeys;
 tupDes = RelationGetDescr(state->indexRel);

 if (sortKey->abbrev_converter)
 {
  datum1 = index_getattr(tuple1, 1, tupDes, &isnull1);
  datum2 = index_getattr(tuple2, 1, tupDes, &isnull2);

  compare = ApplySortAbbrevFullComparator(datum1, isnull1,
            datum2, isnull2,
            sortKey);
  if (compare != 0)
   return compare;
 }


 if (a->isnull1)
  equal_hasnull = 1;

 sortKey++;
 for (nkey = 2; nkey <= keysz; nkey++, sortKey++)
 {
  datum1 = index_getattr(tuple1, nkey, tupDes, &isnull1);
  datum2 = index_getattr(tuple2, nkey, tupDes, &isnull2);

  compare = ApplySortComparator(datum1, isnull1,
           datum2, isnull2,
           sortKey);
  if (compare != 0)
   return compare;


  if (isnull1)
   equal_hasnull = 1;
 }
 if (state->enforceUnique && !equal_hasnull)
 {
  Datum values[INDEX_MAX_KEYS];
  bool isnull[INDEX_MAX_KEYS];
  char *key_desc;







  Assert(tuple1 != tuple2);

  index_deform_tuple(tuple1, tupDes, values, isnull);

  key_desc = BuildIndexValueDescription(state->indexRel, values, isnull);

  ereport(ERROR,
    (errcode(ERRCODE_UNIQUE_VIOLATION),
     errmsg("could not create unique index \"%s\"",
      RelationGetRelationName(state->indexRel)),
     key_desc ? errdetail("Key %s is duplicated.", key_desc) :
     errdetail("Duplicate keys exist."),
     errtableconstraint(state->heapRel,
         RelationGetRelationName(state->indexRel))));
 }







 {
  BlockNumber blk1 = ItemPointerGetBlockNumber(&tuple1->t_tid);
  BlockNumber blk2 = ItemPointerGetBlockNumber(&tuple2->t_tid);

  if (blk1 != blk2)
   return (blk1 < blk2) ? -1 : 1;
 }
 {
  OffsetNumber pos1 = ItemPointerGetOffsetNumber(&tuple1->t_tid);
  OffsetNumber pos2 = ItemPointerGetOffsetNumber(&tuple2->t_tid);

  if (pos1 != pos2)
   return (pos1 < pos2) ? -1 : 1;
 }


 Assert(0);

 return 0;
}
