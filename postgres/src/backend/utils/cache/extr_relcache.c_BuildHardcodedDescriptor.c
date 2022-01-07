
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_8__ {int attcacheoff; } ;
struct TYPE_7__ {int tdtypmod; int tdtypeid; } ;
typedef int MemoryContext ;
typedef int FormData_pg_attribute ;


 int ATTRIBUTE_FIXED_PART_SIZE ;
 int CacheMemoryContext ;
 TYPE_1__* CreateTemplateTupleDesc (int) ;
 int MemoryContextSwitchTo (int ) ;
 int RECORDOID ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 int memcpy (TYPE_2__*,int const*,int ) ;

__attribute__((used)) static TupleDesc
BuildHardcodedDescriptor(int natts, const FormData_pg_attribute *attrs)
{
 TupleDesc result;
 MemoryContext oldcxt;
 int i;

 oldcxt = MemoryContextSwitchTo(CacheMemoryContext);

 result = CreateTemplateTupleDesc(natts);
 result->tdtypeid = RECORDOID;
 result->tdtypmod = -1;

 for (i = 0; i < natts; i++)
 {
  memcpy(TupleDescAttr(result, i), &attrs[i], ATTRIBUTE_FIXED_PART_SIZE);

  TupleDescAttr(result, i)->attcacheoff = -1;
 }


 TupleDescAttr(result, 0)->attcacheoff = 0;



 MemoryContextSwitchTo(oldcxt);

 return result;
}
