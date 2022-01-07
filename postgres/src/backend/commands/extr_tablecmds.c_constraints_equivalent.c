
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_2__ {scalar_t__ condeferrable; scalar_t__ condeferred; } ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_constraint ;


 int GETSTRUCT (int ) ;
 int decompile_conbin (int ,int ) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static bool
constraints_equivalent(HeapTuple a, HeapTuple b, TupleDesc tupleDesc)
{
 Form_pg_constraint acon = (Form_pg_constraint) GETSTRUCT(a);
 Form_pg_constraint bcon = (Form_pg_constraint) GETSTRUCT(b);

 if (acon->condeferrable != bcon->condeferrable ||
  acon->condeferred != bcon->condeferred ||
  strcmp(decompile_conbin(a, tupleDesc),
      decompile_conbin(b, tupleDesc)) != 0)
  return 0;
 else
  return 1;
}
