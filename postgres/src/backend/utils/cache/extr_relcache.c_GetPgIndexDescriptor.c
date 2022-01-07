
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * TupleDesc ;


 int * BuildHardcodedDescriptor (int ,int ) ;
 int Desc_pg_index ;
 int Natts_pg_index ;

__attribute__((used)) static TupleDesc
GetPgIndexDescriptor(void)
{
 static TupleDesc pgindexdesc = ((void*)0);


 if (pgindexdesc == ((void*)0))
  pgindexdesc = BuildHardcodedDescriptor(Natts_pg_index,
              Desc_pg_index);

 return pgindexdesc;
}
