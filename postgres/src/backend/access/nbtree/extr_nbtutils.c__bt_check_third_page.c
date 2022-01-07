
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t_tid; } ;
typedef scalar_t__ Size ;
typedef int Relation ;
typedef int Page ;
typedef TYPE_1__* IndexTuple ;
typedef scalar_t__ BTPageOpaque ;


 scalar_t__ BTMaxItemSize (int ) ;
 scalar_t__ BTMaxItemSizeNoHeapTid (int ) ;
 int BTREE_NOVAC_VERSION ;
 int BTREE_VERSION ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int IndexTupleSize (TYPE_1__*) ;
 int ItemPointerGetBlockNumber (int *) ;
 int ItemPointerGetOffsetNumber (int *) ;
 scalar_t__ MAXALIGN (int ) ;
 int P_ISLEAF (scalar_t__) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int RelationGetRelationName (int ) ;
 int elog (int ,char*,scalar_t__,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int ,int ,int ) ;
 int errhint (char*) ;
 int errmsg (char*,scalar_t__,int ,scalar_t__,int ) ;
 int errtableconstraint (int ,int ) ;

void
_bt_check_third_page(Relation rel, Relation heap, bool needheaptidspace,
      Page page, IndexTuple newtup)
{
 Size itemsz;
 BTPageOpaque opaque;

 itemsz = MAXALIGN(IndexTupleSize(newtup));


 if (itemsz <= BTMaxItemSize(page))
  return;






 if (!needheaptidspace && itemsz <= BTMaxItemSizeNoHeapTid(page))
  return;





 opaque = (BTPageOpaque) PageGetSpecialPointer(page);
 if (!P_ISLEAF(opaque))
  elog(ERROR, "cannot insert oversized tuple of size %zu on internal page of index \"%s\"",
    itemsz, RelationGetRelationName(rel));

 ereport(ERROR,
   (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
    errmsg("index row size %zu exceeds btree version %u maximum %zu for index \"%s\"",
     itemsz,
     needheaptidspace ? BTREE_VERSION : BTREE_NOVAC_VERSION,
     needheaptidspace ? BTMaxItemSize(page) :
     BTMaxItemSizeNoHeapTid(page),
     RelationGetRelationName(rel)),
    errdetail("Index row references tuple (%u,%u) in relation \"%s\".",
        ItemPointerGetBlockNumber(&newtup->t_tid),
        ItemPointerGetOffsetNumber(&newtup->t_tid),
        RelationGetRelationName(heap)),
    errhint("Values larger than 1/3 of a buffer page cannot be indexed.\n"
      "Consider a function index of an MD5 hash of the value, "
      "or use full text indexing."),
    errtableconstraint(heap, RelationGetRelationName(rel))));
}
