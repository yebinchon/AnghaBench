
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; size_t* entries; int isnull; int attr; scalar_t__* dontcare; } ;
typedef int IndexTuple ;
typedef TYPE_1__ GistSplitUnion ;
typedef int GISTSTATE ;


 int gistMakeUnionItVec (int *,int *,int,int ,int ) ;
 scalar_t__ palloc (int) ;
 int pfree (int *) ;

__attribute__((used)) static void
gistunionsubkeyvec(GISTSTATE *giststate, IndexTuple *itvec,
       GistSplitUnion *gsvp)
{
 IndexTuple *cleanedItVec;
 int i,
    cleanedLen = 0;

 cleanedItVec = (IndexTuple *) palloc(sizeof(IndexTuple) * gsvp->len);

 for (i = 0; i < gsvp->len; i++)
 {
  if (gsvp->dontcare && gsvp->dontcare[gsvp->entries[i]])
   continue;

  cleanedItVec[cleanedLen++] = itvec[gsvp->entries[i] - 1];
 }

 gistMakeUnionItVec(giststate, cleanedItVec, cleanedLen,
        gsvp->attr, gsvp->isnull);

 pfree(cleanedItVec);
}
