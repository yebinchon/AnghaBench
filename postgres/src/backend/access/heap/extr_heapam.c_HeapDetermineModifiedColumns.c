
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int HeapTuple ;
typedef int Bitmapset ;


 scalar_t__ FirstLowInvalidHeapAttributeNumber ;
 int RelationGetDescr (int ) ;
 int * bms_add_member (int *,scalar_t__) ;
 int bms_first_member (int *) ;
 int heap_tuple_attr_equals (int ,int,int ,int ) ;

__attribute__((used)) static Bitmapset *
HeapDetermineModifiedColumns(Relation relation, Bitmapset *interesting_cols,
        HeapTuple oldtup, HeapTuple newtup)
{
 int attnum;
 Bitmapset *modified = ((void*)0);

 while ((attnum = bms_first_member(interesting_cols)) >= 0)
 {
  attnum += FirstLowInvalidHeapAttributeNumber;

  if (!heap_tuple_attr_equals(RelationGetDescr(relation),
         attnum, oldtup, newtup))
   modified = bms_add_member(modified,
           attnum - FirstLowInvalidHeapAttributeNumber);
 }

 return modified;
}
