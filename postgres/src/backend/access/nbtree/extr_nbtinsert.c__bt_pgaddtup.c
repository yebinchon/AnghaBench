
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int t_info; } ;
typedef int Size ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int Item ;
typedef TYPE_1__ IndexTupleData ;
typedef TYPE_1__* IndexTuple ;
typedef int BTPageOpaque ;


 int BTreeTupleSetNAtts (TYPE_1__*,int ) ;
 scalar_t__ InvalidOffsetNumber ;
 scalar_t__ P_FIRSTDATAKEY (int ) ;
 int P_ISLEAF (int ) ;
 scalar_t__ PageAddItem (int ,int ,int,scalar_t__,int,int) ;
 int PageGetSpecialPointer (int ) ;

__attribute__((used)) static bool
_bt_pgaddtup(Page page,
    Size itemsize,
    IndexTuple itup,
    OffsetNumber itup_off)
{
 BTPageOpaque opaque = (BTPageOpaque) PageGetSpecialPointer(page);
 IndexTupleData trunctuple;

 if (!P_ISLEAF(opaque) && itup_off == P_FIRSTDATAKEY(opaque))
 {
  trunctuple = *itup;
  trunctuple.t_info = sizeof(IndexTupleData);

  BTreeTupleSetNAtts(&trunctuple, 0);
  itup = &trunctuple;
  itemsize = sizeof(IndexTupleData);
 }

 if (PageAddItem(page, (Item) itup, itemsize, itup_off,
     0, 0) == InvalidOffsetNumber)
  return 0;

 return 1;
}
