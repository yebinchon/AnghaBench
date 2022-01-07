
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;
typedef int Bitmapset ;
typedef scalar_t__ AttrNumber ;


 int ERROR ;
 scalar_t__ FirstLowInvalidHeapAttributeNumber ;
 scalar_t__ InvalidAttrNumber ;
 int * bms_add_member (int *,scalar_t__) ;
 int bms_next_member (int *,int) ;
 int elog (int ,char*,char*,scalar_t__) ;
 char* get_attname (scalar_t__,scalar_t__,int) ;
 scalar_t__ get_attnum (scalar_t__,char*) ;
 int pfree (char*) ;

__attribute__((used)) static Bitmapset *
fixup_inherited_columns(Oid parentId, Oid childId, Bitmapset *columns)
{
 Bitmapset *result = ((void*)0);
 int index;




 if (parentId == childId)
  return columns;

 index = -1;
 while ((index = bms_next_member(columns, index)) >= 0)
 {

  AttrNumber attno = index + FirstLowInvalidHeapAttributeNumber;
  char *attname;




  if (attno == InvalidAttrNumber)
  {
   result = bms_add_member(result, index);
   continue;
  }

  attname = get_attname(parentId, attno, 0);
  attno = get_attnum(childId, attname);
  if (attno == InvalidAttrNumber)
   elog(ERROR, "cache lookup failed for attribute %s of relation %u",
     attname, childId);

  result = bms_add_member(result,
        attno - FirstLowInvalidHeapAttributeNumber);

  pfree(attname);
 }

 return result;
}
