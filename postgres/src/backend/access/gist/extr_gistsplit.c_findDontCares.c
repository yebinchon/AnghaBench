
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int spl_nleft; int* spl_left; int spl_nright; int* spl_right; int spl_ldatum; int spl_rdatum; } ;
struct TYPE_5__ {int* spl_dontcare; TYPE_1__ splitVector; } ;
typedef int Relation ;
typedef int OffsetNumber ;
typedef TYPE_2__ GistSplitVector ;
typedef int GISTSTATE ;
typedef int GISTENTRY ;


 int gistentryinit (int ,int ,int ,int *,int ,int) ;
 float gistpenalty (int *,int,int *,int,int *,int) ;

__attribute__((used)) static int
findDontCares(Relation r, GISTSTATE *giststate, GISTENTRY *valvec,
     GistSplitVector *spl, int attno)
{
 int i;
 GISTENTRY entry;
 int NumDontCare = 0;
 gistentryinit(entry, spl->splitVector.spl_rdatum, r, ((void*)0),
      (OffsetNumber) 0, 0);
 for (i = 0; i < spl->splitVector.spl_nleft; i++)
 {
  int j = spl->splitVector.spl_left[i];
  float penalty = gistpenalty(giststate, attno, &entry, 0,
            &valvec[j], 0);

  if (penalty == 0.0)
  {
   spl->spl_dontcare[j] = 1;
   NumDontCare++;
  }
 }


 gistentryinit(entry, spl->splitVector.spl_ldatum, r, ((void*)0),
      (OffsetNumber) 0, 0);
 for (i = 0; i < spl->splitVector.spl_nright; i++)
 {
  int j = spl->splitVector.spl_right[i];
  float penalty = gistpenalty(giststate, attno, &entry, 0,
            &valvec[j], 0);

  if (penalty == 0.0)
  {
   spl->spl_dontcare[j] = 1;
   NumDontCare++;
  }
 }

 return NumDontCare;
}
