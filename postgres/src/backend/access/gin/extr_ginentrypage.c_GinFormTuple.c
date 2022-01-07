
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_19__ {int index; int * tupdesc; scalar_t__ oneCol; } ;
struct TYPE_18__ {int t_info; } ;
typedef scalar_t__ Size ;
typedef scalar_t__ Pointer ;
typedef int OffsetNumber ;
typedef TYPE_1__* IndexTuple ;
typedef TYPE_2__ GinState ;
typedef int GinNullCategory ;
typedef int Datum ;


 int Assert (int) ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int GIN_CAT_NORM_KEY ;
 int GinCategoryOffset (TYPE_1__*,TYPE_2__*) ;
 char* GinGetPosting (TYPE_1__*) ;
 int GinMaxItemSize ;
 int GinSetNPosting (TYPE_1__*,int) ;
 int GinSetNullCategory (TYPE_1__*,TYPE_2__*,int ) ;
 int GinSetPostingOffset (TYPE_1__*,int) ;
 int INDEX_SIZE_MASK ;
 int IndexTupleHasNulls (TYPE_1__*) ;
 int IndexTupleSize (TYPE_1__*) ;
 int MAXALIGN (int) ;
 int Max (int,int) ;
 int RelationGetRelationName (int ) ;
 int SHORTALIGN (int) ;
 int UInt16GetDatum (int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,scalar_t__,scalar_t__,int ) ;
 TYPE_1__* index_form_tuple (int ,int *,int*) ;
 int memcpy (char*,scalar_t__,scalar_t__) ;
 int memset (char*,int ,int) ;
 int pfree (TYPE_1__*) ;
 TYPE_1__* repalloc (TYPE_1__*,int) ;

IndexTuple
GinFormTuple(GinState *ginstate,
    OffsetNumber attnum, Datum key, GinNullCategory category,
    Pointer data, Size dataSize, int nipd,
    bool errorTooBig)
{
 Datum datums[2];
 bool isnull[2];
 IndexTuple itup;
 uint32 newsize;


 if (ginstate->oneCol)
 {
  datums[0] = key;
  isnull[0] = (category != GIN_CAT_NORM_KEY);
 }
 else
 {
  datums[0] = UInt16GetDatum(attnum);
  isnull[0] = 0;
  datums[1] = key;
  isnull[1] = (category != GIN_CAT_NORM_KEY);
 }

 itup = index_form_tuple(ginstate->tupdesc[attnum - 1], datums, isnull);
 newsize = IndexTupleSize(itup);

 if (IndexTupleHasNulls(itup))
 {
  uint32 minsize;

  Assert(category != GIN_CAT_NORM_KEY);
  minsize = GinCategoryOffset(itup, ginstate) + sizeof(GinNullCategory);
  newsize = Max(newsize, minsize);
 }

 newsize = SHORTALIGN(newsize);

 GinSetPostingOffset(itup, newsize);
 GinSetNPosting(itup, nipd);





 newsize += dataSize;

 newsize = MAXALIGN(newsize);

 if (newsize > GinMaxItemSize)
 {
  if (errorTooBig)
   ereport(ERROR,
     (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
      errmsg("index row size %zu exceeds maximum %zu for index \"%s\"",
       (Size) newsize, (Size) GinMaxItemSize,
       RelationGetRelationName(ginstate->index))));
  pfree(itup);
  return ((void*)0);
 }




 if (newsize != IndexTupleSize(itup))
 {
  itup = repalloc(itup, newsize);





  memset((char *) itup + IndexTupleSize(itup),
      0, newsize - IndexTupleSize(itup));

  itup->t_info &= ~INDEX_SIZE_MASK;
  itup->t_info |= newsize;
 }




 if (data)
 {
  char *ptr = GinGetPosting(itup);

  memcpy(ptr, data, dataSize);
 }




 if (category != GIN_CAT_NORM_KEY)
 {
  Assert(IndexTupleHasNulls(itup));
  GinSetNullCategory(itup, ginstate, category);
 }
 return itup;
}
