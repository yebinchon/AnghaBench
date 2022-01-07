
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int leafTupdesc; } ;
typedef int Relation ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int IndexTuple ;
typedef TYPE_1__ GISTSTATE ;
typedef int GISTENTRY ;
typedef int Datum ;


 int IndexRelationGetNumberOfKeyAttributes (int ) ;
 int gistdentryinit (TYPE_1__*,int,int *,int ,int ,int ,int ,int,int) ;
 int index_getattr (int ,int,int ,int*) ;

void
gistDeCompressAtt(GISTSTATE *giststate, Relation r, IndexTuple tuple, Page p,
      OffsetNumber o, GISTENTRY *attdata, bool *isnull)
{
 int i;

 for (i = 0; i < IndexRelationGetNumberOfKeyAttributes(r); i++)
 {
  Datum datum;

  datum = index_getattr(tuple, i + 1, giststate->leafTupdesc, &isnull[i]);
  gistdentryinit(giststate, i, &attdata[i],
        datum, r, p, o,
        0, isnull[i]);
 }
}
