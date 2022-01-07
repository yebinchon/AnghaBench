
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_20__ {TYPE_1__* nonLeafTupdesc; int leafTupdesc; } ;
struct TYPE_19__ {int* spl_right; int spl_nright; int* spl_left; int spl_nleft; } ;
struct TYPE_18__ {int n; int * vector; } ;
struct TYPE_17__ {int* spl_risnull; int* spl_lisnull; scalar_t__* spl_dontcare; TYPE_4__ splitVector; } ;
struct TYPE_16__ {int natts; } ;
typedef int Relation ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int IndexTuple ;
typedef TYPE_2__ GistSplitVector ;
typedef TYPE_3__ GistEntryVector ;
typedef TYPE_4__ GIST_SPLITVEC ;
typedef TYPE_5__ GISTSTATE ;
typedef int GISTENTRY ;
typedef int Datum ;


 int Assert (int) ;
 int GEVHDRSZ ;
 int gistSplitHalf (TYPE_4__*,int) ;
 scalar_t__ gistUserPicksplit (int ,TYPE_3__*,int,TYPE_2__*,int *,int,TYPE_5__*) ;
 int gistdentryinit (TYPE_5__*,int,int *,int ,int ,int ,int,int,int) ;
 int gistunionsubkey (TYPE_5__*,int *,TYPE_2__*) ;
 int index_getattr (int ,int,int ,int*) ;
 int memcpy (int*,int*,int) ;
 TYPE_3__* palloc (int) ;

void
gistSplitByKey(Relation r, Page page, IndexTuple *itup, int len,
      GISTSTATE *giststate, GistSplitVector *v, int attno)
{
 GistEntryVector *entryvec;
 OffsetNumber *offNullTuples;
 int nOffNullTuples = 0;
 int i;



 entryvec = palloc(GEVHDRSZ + (len + 1) * sizeof(GISTENTRY));
 entryvec->n = len + 1;
 offNullTuples = (OffsetNumber *) palloc(len * sizeof(OffsetNumber));

 for (i = 1; i <= len; i++)
 {
  Datum datum;
  bool IsNull;

  datum = index_getattr(itup[i - 1], attno + 1, giststate->leafTupdesc,
         &IsNull);
  gistdentryinit(giststate, attno, &(entryvec->vector[i]),
        datum, r, page, i,
        0, IsNull);
  if (IsNull)
   offNullTuples[nOffNullTuples++] = i;
 }

 if (nOffNullTuples == len)
 {





  v->spl_risnull[attno] = v->spl_lisnull[attno] = 1;

  if (attno + 1 < giststate->nonLeafTupdesc->natts)
   gistSplitByKey(r, page, itup, len, giststate, v, attno + 1);
  else
   gistSplitHalf(&v->splitVector, len);
 }
 else if (nOffNullTuples > 0)
 {
  int j = 0;





  v->splitVector.spl_right = offNullTuples;
  v->splitVector.spl_nright = nOffNullTuples;
  v->spl_risnull[attno] = 1;

  v->splitVector.spl_left = (OffsetNumber *) palloc(len * sizeof(OffsetNumber));
  v->splitVector.spl_nleft = 0;
  for (i = 1; i <= len; i++)
   if (j < v->splitVector.spl_nright && offNullTuples[j] == i)
    j++;
   else
    v->splitVector.spl_left[v->splitVector.spl_nleft++] = i;


  if (attno == 0 && giststate->nonLeafTupdesc->natts == 1)
  {
   v->spl_dontcare = ((void*)0);
   gistunionsubkey(giststate, itup, v);
  }
 }
 else
 {



  if (gistUserPicksplit(r, entryvec, attno, v, itup, len, giststate))
  {




   Assert(attno + 1 < giststate->nonLeafTupdesc->natts);

   if (v->spl_dontcare == ((void*)0))
   {




    gistSplitByKey(r, page, itup, len, giststate, v, attno + 1);
   }
   else
   {




    IndexTuple *newitup = (IndexTuple *) palloc(len * sizeof(IndexTuple));
    OffsetNumber *map = (OffsetNumber *) palloc(len * sizeof(OffsetNumber));
    int newlen = 0;
    GIST_SPLITVEC backupSplit;

    for (i = 0; i < len; i++)
    {
     if (v->spl_dontcare[i + 1])
     {
      newitup[newlen] = itup[i];
      map[newlen] = i + 1;
      newlen++;
     }
    }

    Assert(newlen > 0);





    backupSplit = v->splitVector;
    backupSplit.spl_left = (OffsetNumber *) palloc(sizeof(OffsetNumber) * len);
    memcpy(backupSplit.spl_left, v->splitVector.spl_left, sizeof(OffsetNumber) * v->splitVector.spl_nleft);
    backupSplit.spl_right = (OffsetNumber *) palloc(sizeof(OffsetNumber) * len);
    memcpy(backupSplit.spl_right, v->splitVector.spl_right, sizeof(OffsetNumber) * v->splitVector.spl_nright);


    gistSplitByKey(r, page, newitup, newlen, giststate, v, attno + 1);


    for (i = 0; i < v->splitVector.spl_nleft; i++)
     backupSplit.spl_left[backupSplit.spl_nleft++] = map[v->splitVector.spl_left[i] - 1];
    for (i = 0; i < v->splitVector.spl_nright; i++)
     backupSplit.spl_right[backupSplit.spl_nright++] = map[v->splitVector.spl_right[i] - 1];

    v->splitVector = backupSplit;
   }
  }
 }
 if (attno == 0 && giststate->nonLeafTupdesc->natts > 1)
 {
  v->spl_dontcare = ((void*)0);
  gistunionsubkey(giststate, itup, v);
 }
}
