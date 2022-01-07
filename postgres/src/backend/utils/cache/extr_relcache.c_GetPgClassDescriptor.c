
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * TupleDesc ;


 int * BuildHardcodedDescriptor (int ,int ) ;
 int Desc_pg_class ;
 int Natts_pg_class ;

__attribute__((used)) static TupleDesc
GetPgClassDescriptor(void)
{
 static TupleDesc pgclassdesc = ((void*)0);


 if (pgclassdesc == ((void*)0))
  pgclassdesc = BuildHardcodedDescriptor(Natts_pg_class,
              Desc_pg_class);

 return pgclassdesc;
}
