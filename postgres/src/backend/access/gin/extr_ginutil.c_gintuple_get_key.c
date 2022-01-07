
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * tupdesc; int origTupdesc; scalar_t__ oneCol; } ;
typedef int OffsetNumber ;
typedef int IndexTuple ;
typedef TYPE_1__ GinState ;
typedef int GinNullCategory ;
typedef int Datum ;


 int FirstOffsetNumber ;
 int GIN_CAT_NORM_KEY ;
 int GinGetNullCategory (int ,TYPE_1__*) ;
 int OffsetNumberNext (int ) ;
 int gintuple_get_attrnum (TYPE_1__*,int ) ;
 int index_getattr (int ,int ,int ,int*) ;

Datum
gintuple_get_key(GinState *ginstate, IndexTuple tuple,
     GinNullCategory *category)
{
 Datum res;
 bool isnull;

 if (ginstate->oneCol)
 {



  res = index_getattr(tuple, FirstOffsetNumber, ginstate->origTupdesc,
       &isnull);
 }
 else
 {




  OffsetNumber colN = gintuple_get_attrnum(ginstate, tuple);

  res = index_getattr(tuple, OffsetNumberNext(FirstOffsetNumber),
       ginstate->tupdesc[colN - 1],
       &isnull);
 }

 if (isnull)
  *category = GinGetNullCategory(tuple, ginstate);
 else
  *category = GIN_CAT_NORM_KEY;

 return res;
}
