
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int key; } ;
struct TYPE_11__ {int t_tid; } ;
typedef int Relation ;
typedef int OffsetNumber ;
typedef TYPE_1__* IndexTuple ;
typedef int GISTSTATE ;
typedef TYPE_2__ GISTENTRY ;
typedef int Datum ;


 int INDEX_MAX_KEYS ;
 int IndexRelationGetNumberOfKeyAttributes (int ) ;
 int gistDeCompressAtt (int *,int ,TYPE_1__*,int *,int ,TYPE_2__*,int*) ;
 TYPE_1__* gistFormTuple (int *,int ,int *,int*,int) ;
 int gistKeyIsEQ (int *,int,int ,int ) ;
 int gistMakeUnionKey (int *,int,TYPE_2__*,int,TYPE_2__*,int,int *,int*) ;

IndexTuple
gistgetadjusted(Relation r, IndexTuple oldtup, IndexTuple addtup, GISTSTATE *giststate)
{
 bool neednew = 0;
 GISTENTRY oldentries[INDEX_MAX_KEYS],
    addentries[INDEX_MAX_KEYS];
 bool oldisnull[INDEX_MAX_KEYS],
    addisnull[INDEX_MAX_KEYS];
 Datum attr[INDEX_MAX_KEYS];
 bool isnull[INDEX_MAX_KEYS];
 IndexTuple newtup = ((void*)0);
 int i;

 gistDeCompressAtt(giststate, r, oldtup, ((void*)0),
       (OffsetNumber) 0, oldentries, oldisnull);

 gistDeCompressAtt(giststate, r, addtup, ((void*)0),
       (OffsetNumber) 0, addentries, addisnull);

 for (i = 0; i < IndexRelationGetNumberOfKeyAttributes(r); i++)
 {
  gistMakeUnionKey(giststate, i,
       oldentries + i, oldisnull[i],
       addentries + i, addisnull[i],
       attr + i, isnull + i);

  if (neednew)

   continue;

  if (isnull[i])

   continue;

  if (!addisnull[i])
  {
   if (oldisnull[i] ||
    !gistKeyIsEQ(giststate, i, oldentries[i].key, attr[i]))
    neednew = 1;
  }
 }

 if (neednew)
 {

  newtup = gistFormTuple(giststate, r, attr, isnull, 0);
  newtup->t_tid = oldtup->t_tid;
 }

 return newtup;
}
