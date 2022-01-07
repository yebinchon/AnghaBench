
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int nNodes; unsigned int prefixSize; unsigned int size; } ;
struct TYPE_7__ {int attPrefixType; } ;
typedef TYPE_1__ SpGistState ;
typedef int SpGistNodeTuple ;
typedef TYPE_2__* SpGistInnerTuple ;
typedef int Size ;
typedef int ItemIdData ;
typedef int Datum ;


 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 scalar_t__ IndexTupleSize (int ) ;
 unsigned int SGDTSIZE ;
 int SGITDATAPTR (TYPE_2__*) ;
 unsigned int SGITHDRSZ ;
 int SGITMAXNNODES ;
 unsigned int SGITMAXPREFIXSIZE ;
 unsigned int SGITMAXSIZE ;
 scalar_t__ SGITNODEPTR (TYPE_2__*) ;
 int SPGIST_PAGE_CAPACITY ;
 unsigned int SpGistGetTypeSize (int *,int ) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ,int) ;
 int memcpy (char*,int ,scalar_t__) ;
 int memcpyDatum (int ,int *,int ) ;
 scalar_t__ palloc0 (unsigned int) ;

SpGistInnerTuple
spgFormInnerTuple(SpGistState *state, bool hasPrefix, Datum prefix,
      int nNodes, SpGistNodeTuple *nodes)
{
 SpGistInnerTuple tup;
 unsigned int size;
 unsigned int prefixSize;
 int i;
 char *ptr;


 if (hasPrefix)
  prefixSize = SpGistGetTypeSize(&state->attPrefixType, prefix);
 else
  prefixSize = 0;

 size = SGITHDRSZ + prefixSize;


 for (i = 0; i < nNodes; i++)
  size += IndexTupleSize(nodes[i]);





 if (size < SGDTSIZE)
  size = SGDTSIZE;




 if (size > SPGIST_PAGE_CAPACITY - sizeof(ItemIdData))
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("SP-GiST inner tuple size %zu exceeds maximum %zu",
      (Size) size,
      SPGIST_PAGE_CAPACITY - sizeof(ItemIdData)),
     errhint("Values larger than a buffer page cannot be indexed.")));





 if (size > SGITMAXSIZE ||
  prefixSize > SGITMAXPREFIXSIZE ||
  nNodes > SGITMAXNNODES)
  elog(ERROR, "SPGiST inner tuple header field is too small");


 tup = (SpGistInnerTuple) palloc0(size);

 tup->nNodes = nNodes;
 tup->prefixSize = prefixSize;
 tup->size = size;

 if (hasPrefix)
  memcpyDatum(SGITDATAPTR(tup), &state->attPrefixType, prefix);

 ptr = (char *) SGITNODEPTR(tup);

 for (i = 0; i < nNodes; i++)
 {
  SpGistNodeTuple node = nodes[i];

  memcpy(ptr, node, IndexTupleSize(node));
  ptr += IndexTupleSize(node);
 }

 return tup;
}
