
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* nonLeafTupdesc; } ;
struct TYPE_10__ {int spl_nright; void** spl_right; int spl_nleft; void** spl_left; } ;
struct TYPE_11__ {TYPE_2__ splitVector; int * spl_risnull; int * spl_rattr; int * spl_lisnull; int * spl_lattr; } ;
struct TYPE_9__ {int natts; } ;
typedef int Relation ;
typedef void* OffsetNumber ;
typedef int IndexTuple ;
typedef TYPE_3__ GistSplitVector ;
typedef TYPE_4__ GISTSTATE ;
typedef int GISTENTRY ;


 int INDEX_MAX_KEYS ;
 int gistDeCompressAtt (TYPE_4__*,int ,int ,int *,void*,int *,int*) ;
 int gistentryinit (int ,int ,int ,int *,int ,int) ;
 float gistpenalty (TYPE_4__*,int,int *,int ,int *,int) ;

__attribute__((used)) static void
placeOne(Relation r, GISTSTATE *giststate, GistSplitVector *v,
   IndexTuple itup, OffsetNumber off, int attno)
{
 GISTENTRY identry[INDEX_MAX_KEYS];
 bool isnull[INDEX_MAX_KEYS];
 bool toLeft = 1;

 gistDeCompressAtt(giststate, r, itup, ((void*)0), (OffsetNumber) 0,
       identry, isnull);

 for (; attno < giststate->nonLeafTupdesc->natts; attno++)
 {
  float lpenalty,
     rpenalty;
  GISTENTRY entry;

  gistentryinit(entry, v->spl_lattr[attno], r, ((void*)0), 0, 0);
  lpenalty = gistpenalty(giststate, attno, &entry, v->spl_lisnull[attno],
          identry + attno, isnull[attno]);
  gistentryinit(entry, v->spl_rattr[attno], r, ((void*)0), 0, 0);
  rpenalty = gistpenalty(giststate, attno, &entry, v->spl_risnull[attno],
          identry + attno, isnull[attno]);

  if (lpenalty != rpenalty)
  {
   if (lpenalty > rpenalty)
    toLeft = 0;
   break;
  }
 }

 if (toLeft)
  v->splitVector.spl_left[v->splitVector.spl_nleft++] = off;
 else
  v->splitVector.spl_right[v->splitVector.spl_nright++] = off;
}
