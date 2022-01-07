
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Bitmapset ;
typedef scalar_t__ AttrNumber ;


 int Assert (int) ;
 int AttrNumberIsForUserDefinedAttr (int) ;
 int MaxAttrNumber ;
 int bms_next_member (int *,int) ;
 int bms_num_members (int *) ;
 scalar_t__ palloc (int) ;

AttrNumber *
build_attnums_array(Bitmapset *attrs, int *numattrs)
{
 int i,
    j;
 AttrNumber *attnums;
 int num = bms_num_members(attrs);

 if (numattrs)
  *numattrs = num;


 attnums = (AttrNumber *) palloc(sizeof(AttrNumber) * num);
 i = 0;
 j = -1;
 while ((j = bms_next_member(attrs, j)) >= 0)
 {






  Assert(AttrNumberIsForUserDefinedAttr(j));
  Assert(j <= MaxAttrNumber);

  attnums[i++] = (AttrNumber) j;


  Assert(i <= num);
 }

 return attnums;
}
