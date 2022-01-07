
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int leafTupdesc; } ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int IndexTuple ;
typedef TYPE_1__ GISTSTATE ;
typedef int GISTENTRY ;
typedef int Datum ;


 int Assert (int) ;
 scalar_t__ FirstOffsetNumber ;
 int GistPageIsLeaf (int ) ;
 int INDEX_MAX_KEYS ;
 int IndexRelationGetNumberOfKeyAttributes (int ) ;
 int MAX_RANDOM_VALUE ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 int PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int gistDeCompressAtt (TYPE_1__*,int ,int ,int *,scalar_t__,int *,int*) ;
 int gistdentryinit (TYPE_1__*,int,int *,int ,int ,int ,scalar_t__,int,int) ;
 float gistpenalty (TYPE_1__*,int,int *,int,int *,int) ;
 int index_getattr (int ,int,int ,int*) ;
 int random () ;

OffsetNumber
gistchoose(Relation r, Page p, IndexTuple it,
     GISTSTATE *giststate)
{
 OffsetNumber result;
 OffsetNumber maxoff;
 OffsetNumber i;
 float best_penalty[INDEX_MAX_KEYS];
 GISTENTRY entry,
    identry[INDEX_MAX_KEYS];
 bool isnull[INDEX_MAX_KEYS];
 int keep_current_best;

 Assert(!GistPageIsLeaf(p));

 gistDeCompressAtt(giststate, r,
       it, ((void*)0), (OffsetNumber) 0,
       identry, isnull);


 result = FirstOffsetNumber;
 best_penalty[0] = -1;
 keep_current_best = -1;




 maxoff = PageGetMaxOffsetNumber(p);
 Assert(maxoff >= FirstOffsetNumber);

 for (i = FirstOffsetNumber; i <= maxoff; i = OffsetNumberNext(i))
 {
  IndexTuple itup = (IndexTuple) PageGetItem(p, PageGetItemId(p, i));
  bool zero_penalty;
  int j;

  zero_penalty = 1;


  for (j = 0; j < IndexRelationGetNumberOfKeyAttributes(r); j++)
  {
   Datum datum;
   float usize;
   bool IsNull;


   datum = index_getattr(itup, j + 1, giststate->leafTupdesc,
          &IsNull);
   gistdentryinit(giststate, j, &entry, datum, r, p, i,
         0, IsNull);
   usize = gistpenalty(giststate, j, &entry, IsNull,
        &identry[j], isnull[j]);
   if (usize > 0)
    zero_penalty = 0;

   if (best_penalty[j] < 0 || usize < best_penalty[j])
   {
    result = i;
    best_penalty[j] = usize;

    if (j < IndexRelationGetNumberOfKeyAttributes(r) - 1)
     best_penalty[j + 1] = -1;


    keep_current_best = -1;
   }
   else if (best_penalty[j] == usize)
   {





   }
   else
   {





    zero_penalty = 0;
    break;
   }
  }





  if (j == IndexRelationGetNumberOfKeyAttributes(r) && result != i)
  {
   if (keep_current_best == -1)
   {

    keep_current_best = (random() <= (MAX_RANDOM_VALUE / 2)) ? 1 : 0;
   }
   if (keep_current_best == 0)
   {

    result = i;

    keep_current_best = -1;
   }
  }







  if (zero_penalty)
  {
   if (keep_current_best == -1)
   {

    keep_current_best = (random() <= (MAX_RANDOM_VALUE / 2)) ? 1 : 0;
   }
   if (keep_current_best == 1)
    break;
  }
 }

 return result;
}
