
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int IndexTuple ;
typedef int GISTSTATE ;
typedef int Datum ;


 int INDEX_MAX_KEYS ;
 int gistFormTuple (int *,int ,int *,int*,int) ;
 int gistMakeUnionItVec (int *,int *,int,int *,int*) ;

IndexTuple
gistunion(Relation r, IndexTuple *itvec, int len, GISTSTATE *giststate)
{
 Datum attr[INDEX_MAX_KEYS];
 bool isnull[INDEX_MAX_KEYS];

 gistMakeUnionItVec(giststate, itvec, len, attr, isnull);

 return gistFormTuple(giststate, r, attr, isnull, 0);
}
