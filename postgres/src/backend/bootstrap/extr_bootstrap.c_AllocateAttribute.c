
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Form_pg_attribute ;


 int ATTRIBUTE_FIXED_PART_SIZE ;
 int MemoryContextAllocZero (int ,int ) ;
 int TopMemoryContext ;

__attribute__((used)) static Form_pg_attribute
AllocateAttribute(void)
{
 return (Form_pg_attribute)
  MemoryContextAllocZero(TopMemoryContext, ATTRIBUTE_FIXED_PART_SIZE);
}
