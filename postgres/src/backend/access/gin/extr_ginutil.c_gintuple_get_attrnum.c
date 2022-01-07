
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* origTupdesc; int * tupdesc; scalar_t__ oneCol; } ;
struct TYPE_4__ {scalar_t__ natts; } ;
typedef scalar_t__ OffsetNumber ;
typedef int IndexTuple ;
typedef TYPE_2__ GinState ;
typedef int Datum ;


 int Assert (int) ;
 scalar_t__ DatumGetUInt16 (int ) ;
 scalar_t__ FirstOffsetNumber ;
 int index_getattr (int ,scalar_t__,int ,int*) ;

OffsetNumber
gintuple_get_attrnum(GinState *ginstate, IndexTuple tuple)
{
 OffsetNumber colN;

 if (ginstate->oneCol)
 {

  colN = FirstOffsetNumber;
 }
 else
 {
  Datum res;
  bool isnull;





  res = index_getattr(tuple, FirstOffsetNumber, ginstate->tupdesc[0],
       &isnull);
  Assert(!isnull);

  colN = DatumGetUInt16(res);
  Assert(colN >= FirstOffsetNumber && colN <= ginstate->origTupdesc->natts);
 }

 return colN;
}
