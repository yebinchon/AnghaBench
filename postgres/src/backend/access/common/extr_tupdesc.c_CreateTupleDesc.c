
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleDesc ;
typedef int Form_pg_attribute ;


 int ATTRIBUTE_FIXED_PART_SIZE ;
 int CreateTemplateTupleDesc (int) ;
 int TupleDescAttr (int ,int) ;
 int memcpy (int ,int ,int ) ;

TupleDesc
CreateTupleDesc(int natts, Form_pg_attribute *attrs)
{
 TupleDesc desc;
 int i;

 desc = CreateTemplateTupleDesc(natts);

 for (i = 0; i < natts; ++i)
  memcpy(TupleDescAttr(desc, i), attrs[i], ATTRIBUTE_FIXED_PART_SIZE);

 return desc;
}
