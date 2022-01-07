
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_76__ TYPE_9__ ;
typedef struct TYPE_75__ TYPE_8__ ;
typedef struct TYPE_74__ TYPE_6__ ;
typedef struct TYPE_73__ TYPE_5__ ;
typedef struct TYPE_72__ TYPE_57__ ;
typedef struct TYPE_71__ TYPE_4__ ;
typedef struct TYPE_70__ TYPE_3__ ;
typedef struct TYPE_69__ TYPE_2__ ;
typedef struct TYPE_68__ TYPE_1__ ;
typedef struct TYPE_67__ TYPE_12__ ;
typedef struct TYPE_66__ TYPE_11__ ;
typedef struct TYPE_65__ TYPE_10__ ;


struct TYPE_69__ {int nodeLabel; int nodeN; } ;
struct TYPE_68__ {int nodeN; int levelAdd; void* restDatum; } ;
struct TYPE_70__ {TYPE_2__ addNode; TYPE_1__ matchNode; } ;
struct TYPE_74__ {int level; int hasPrefix; int nNodes; int resultType; TYPE_3__ result; int * nodeLabels; int prefixDatum; scalar_t__ allTheSame; void* leafDatum; void* datum; } ;
typedef TYPE_6__ spgChooseOut ;
typedef TYPE_6__ spgChooseIn ;
typedef int out ;
struct TYPE_76__ {int size; } ;
struct TYPE_72__ {scalar_t__ type; } ;
struct TYPE_73__ {int longValuesOK; } ;
struct TYPE_71__ {scalar_t__ type; int attlen; } ;
struct TYPE_75__ {TYPE_57__ attLeafType; TYPE_5__ config; TYPE_4__ attType; } ;
struct TYPE_67__ {int * rd_indcollation; } ;
struct TYPE_66__ {scalar_t__ blkno; scalar_t__ buffer; int node; int offnum; int * page; } ;
struct TYPE_65__ {scalar_t__ prefixSize; int nNodes; scalar_t__ allTheSame; } ;
typedef TYPE_8__ SpGistState ;
typedef TYPE_9__* SpGistLeafTuple ;
typedef TYPE_10__* SpGistInnerTuple ;
typedef TYPE_11__ SPPageDesc ;
typedef TYPE_12__* Relation ;
typedef int ItemPointer ;
typedef int ItemIdData ;
typedef int FmgrInfo ;
typedef void* Datum ;


 int Assert (int) ;
 int BUFFER_LOCK_EXCLUSIVE ;
 scalar_t__ BufferGetBlockNumber (scalar_t__) ;
 int * BufferGetPage (scalar_t__) ;
 int CHECK_FOR_INTERRUPTS () ;
 int ConditionalLockBuffer (scalar_t__) ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int FirstOffsetNumber ;
 void* FunctionCall1Coll (int *,int ,void*) ;
 int FunctionCall2Coll (int *,int ,void*,void*) ;
 int GBUF_LEAF ;
 int GBUF_NULLS ;
 scalar_t__ InvalidBlockNumber ;
 scalar_t__ InvalidBuffer ;
 int InvalidOffsetNumber ;
 int LockBuffer (scalar_t__,int ) ;
 int Min (int,int) ;
 scalar_t__ OidIsValid (int ) ;
 TYPE_6__* PG_DETOAST_DATUM (void*) ;
 scalar_t__ PageGetItem (int *,int ) ;
 int PageGetItemId (int *,int ) ;
 void* PointerGetDatum (TYPE_6__*) ;
 void* ReadBuffer (TYPE_12__*,scalar_t__) ;
 int RelationGetRelationName (TYPE_12__*) ;
 int ReleaseBuffer (scalar_t__) ;
 int SGDTSIZE ;
 int SGITDATUM (TYPE_10__*,TYPE_8__*) ;
 int SGLTHDRSZ ;
 int SPGIST_CHOOSE_PROC ;
 int SPGIST_COMPRESS_PROC ;
 scalar_t__ SPGIST_NULL_BLKNO ;
 int SPGIST_PAGE_CAPACITY ;
 scalar_t__ SPGIST_ROOT_BLKNO ;
 scalar_t__ SpGistGetBuffer (TYPE_12__*,int,int ,int*) ;
 int SpGistGetTypeSize (TYPE_57__*,void*) ;
 int SpGistPageGetFreeSpace (int *,int) ;
 scalar_t__ SpGistPageIsLeaf (int *) ;
 int SpGistPageStoresNulls (int *) ;
 int SpGistSetLastUsedPage (TYPE_12__*,scalar_t__) ;
 int UnlockReleaseBuffer (scalar_t__) ;
 int addLeafTuple (TYPE_12__*,TYPE_8__*,TYPE_9__*,TYPE_11__*,TYPE_11__*,int,int) ;
 int checkSplitConditions (TYPE_12__*,TYPE_8__*,TYPE_11__*,int*) ;
 scalar_t__ doPickSplit (TYPE_12__*,TYPE_8__*,TYPE_11__*,TYPE_11__*,TYPE_9__*,int,int,int) ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int,int,int ) ;
 int index_getprocid (TYPE_12__*,int,int ) ;
 int * index_getprocinfo (TYPE_12__*,int,int ) ;
 int memset (TYPE_6__*,int ,int) ;
 int moveLeafs (TYPE_12__*,TYPE_8__*,TYPE_11__*,TYPE_11__*,TYPE_9__*,int) ;
 int pfree (TYPE_9__*) ;
 int random () ;

 int spgAddNodeAction (TYPE_12__*,TYPE_8__*,TYPE_10__*,TYPE_11__*,TYPE_11__*,int ,int ) ;
 int * spgExtractNodeLabels (TYPE_8__*,TYPE_10__*) ;
 TYPE_9__* spgFormLeafTuple (TYPE_8__*,int ,void*,int) ;

 int spgMatchNodeAction (TYPE_12__*,TYPE_8__*,TYPE_10__*,TYPE_11__*,TYPE_11__*,int) ;
 int spgSplitNodeAction (TYPE_12__*,TYPE_8__*,TYPE_10__*,TYPE_11__*,TYPE_6__*) ;


bool
spgdoinsert(Relation index, SpGistState *state,
   ItemPointer heapPtr, Datum datum, bool isnull)
{
 int level = 0;
 Datum leafDatum;
 int leafSize;
 SPPageDesc current,
    parent;
 FmgrInfo *procinfo = ((void*)0);





 if (!isnull)
  procinfo = index_getprocinfo(index, 1, SPGIST_CHOOSE_PROC);
 if (!isnull)
 {
  if (OidIsValid(index_getprocid(index, 1, SPGIST_COMPRESS_PROC)))
  {
   FmgrInfo *compressProcinfo = ((void*)0);

   compressProcinfo = index_getprocinfo(index, 1, SPGIST_COMPRESS_PROC);
   leafDatum = FunctionCall1Coll(compressProcinfo,
            index->rd_indcollation[0],
            datum);
  }
  else
  {
   Assert(state->attLeafType.type == state->attType.type);

   if (state->attType.attlen == -1)
    leafDatum = PointerGetDatum(PG_DETOAST_DATUM(datum));
   else
    leafDatum = datum;
  }
 }
 else
  leafDatum = (Datum) 0;







 if (!isnull)
  leafSize = SGLTHDRSZ + sizeof(ItemIdData) +
   SpGistGetTypeSize(&state->attLeafType, leafDatum);
 else
  leafSize = SGDTSIZE + sizeof(ItemIdData);

 if (leafSize > SPGIST_PAGE_CAPACITY && !state->config.longValuesOK)
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("index row size %zu exceeds maximum %zu for index \"%s\"",
      leafSize - sizeof(ItemIdData),
      SPGIST_PAGE_CAPACITY - sizeof(ItemIdData),
      RelationGetRelationName(index)),
     errhint("Values larger than a buffer page cannot be indexed.")));


 current.blkno = isnull ? SPGIST_NULL_BLKNO : SPGIST_ROOT_BLKNO;
 current.buffer = InvalidBuffer;
 current.page = ((void*)0);
 current.offnum = FirstOffsetNumber;
 current.node = -1;


 parent.blkno = InvalidBlockNumber;
 parent.buffer = InvalidBuffer;
 parent.page = ((void*)0);
 parent.offnum = InvalidOffsetNumber;
 parent.node = -1;

 for (;;)
 {
  bool isNew = 0;






  CHECK_FOR_INTERRUPTS();

  if (current.blkno == InvalidBlockNumber)
  {






   current.buffer =
    SpGistGetBuffer(index,
        GBUF_LEAF | (isnull ? GBUF_NULLS : 0),
        Min(leafSize, SPGIST_PAGE_CAPACITY),
        &isNew);
   current.blkno = BufferGetBlockNumber(current.buffer);
  }
  else if (parent.buffer == InvalidBuffer)
  {

   current.buffer = ReadBuffer(index, current.blkno);
   LockBuffer(current.buffer, BUFFER_LOCK_EXCLUSIVE);
  }
  else if (current.blkno != parent.blkno)
  {

   current.buffer = ReadBuffer(index, current.blkno);
   if (!ConditionalLockBuffer(current.buffer))
   {
    ReleaseBuffer(current.buffer);
    UnlockReleaseBuffer(parent.buffer);
    return 0;
   }
  }
  else
  {

   current.buffer = parent.buffer;
  }
  current.page = BufferGetPage(current.buffer);


  if (isnull ? !SpGistPageStoresNulls(current.page) :
   SpGistPageStoresNulls(current.page))
   elog(ERROR, "SPGiST index page %u has wrong nulls flag",
     current.blkno);

  if (SpGistPageIsLeaf(current.page))
  {
   SpGistLeafTuple leafTuple;
   int nToSplit,
      sizeToSplit;

   leafTuple = spgFormLeafTuple(state, heapPtr, leafDatum, isnull);
   if (leafTuple->size + sizeof(ItemIdData) <=
    SpGistPageGetFreeSpace(current.page, 1))
   {

    addLeafTuple(index, state, leafTuple,
        &current, &parent, isnull, isNew);
    break;
   }
   else if ((sizeToSplit =
       checkSplitConditions(index, state, &current,
             &nToSplit)) < SPGIST_PAGE_CAPACITY / 2 &&
      nToSplit < 64 &&
      leafTuple->size + sizeof(ItemIdData) + sizeToSplit <= SPGIST_PAGE_CAPACITY)
   {




    Assert(!isNew);
    moveLeafs(index, state, &current, &parent, leafTuple, isnull);
    break;
   }
   else
   {

    if (doPickSplit(index, state, &current, &parent,
        leafTuple, level, isnull, isNew))
     break;


    pfree(leafTuple);




    Assert(!SpGistPageIsLeaf(current.page));
    goto process_inner_tuple;
   }
  }
  else
  {




   SpGistInnerTuple innerTuple;
   spgChooseIn in;
   spgChooseOut out;







 process_inner_tuple:
   CHECK_FOR_INTERRUPTS();

   innerTuple = (SpGistInnerTuple) PageGetItem(current.page,
              PageGetItemId(current.page, current.offnum));

   in.datum = datum;
   in.leafDatum = leafDatum;
   in.level = level;
   in.allTheSame = innerTuple->allTheSame;
   in.hasPrefix = (innerTuple->prefixSize > 0);
   in.prefixDatum = SGITDATUM(innerTuple, state);
   in.nNodes = innerTuple->nNodes;
   in.nodeLabels = spgExtractNodeLabels(state, innerTuple);

   memset(&out, 0, sizeof(out));

   if (!isnull)
   {

    FunctionCall2Coll(procinfo,
          index->rd_indcollation[0],
          PointerGetDatum(&in),
          PointerGetDatum(&out));
   }
   else
   {

    out.resultType = 129;
   }

   if (innerTuple->allTheSame)
   {





    if (out.resultType == 130)
     elog(ERROR, "cannot add a node to an allTheSame inner tuple");
    else if (out.resultType == 129)
     out.result.matchNode.nodeN = random() % innerTuple->nNodes;
   }

   switch (out.resultType)
   {
    case 129:

     spgMatchNodeAction(index, state, innerTuple,
            &current, &parent,
            out.result.matchNode.nodeN);

     level += out.result.matchNode.levelAdd;

     if (!isnull)
     {
      leafDatum = out.result.matchNode.restDatum;
      leafSize = SGLTHDRSZ + sizeof(ItemIdData) +
       SpGistGetTypeSize(&state->attLeafType, leafDatum);
     }
     break;
    case 130:

     if (in.nodeLabels == ((void*)0))
      elog(ERROR, "cannot add a node to an inner tuple without node labels");

     spgAddNodeAction(index, state, innerTuple,
          &current, &parent,
          out.result.addNode.nodeN,
          out.result.addNode.nodeLabel);





     goto process_inner_tuple;
     break;
    case 128:

     spgSplitNodeAction(index, state, innerTuple,
            &current, &out);


     goto process_inner_tuple;
     break;
    default:
     elog(ERROR, "unrecognized SPGiST choose result: %d",
       (int) out.resultType);
     break;
   }
  }
 }





 if (current.buffer != InvalidBuffer)
 {
  SpGistSetLastUsedPage(index, current.buffer);
  UnlockReleaseBuffer(current.buffer);
 }
 if (parent.buffer != InvalidBuffer &&
  parent.buffer != current.buffer)
 {
  SpGistSetLastUsedPage(index, parent.buffer);
  UnlockReleaseBuffer(parent.buffer);
 }

 return 1;
}
