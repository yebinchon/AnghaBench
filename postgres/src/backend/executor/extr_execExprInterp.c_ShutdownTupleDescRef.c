
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * TupleDesc ;
typedef int Datum ;


 scalar_t__ DatumGetPointer (int ) ;
 int ReleaseTupleDesc (int *) ;

__attribute__((used)) static void
ShutdownTupleDescRef(Datum arg)
{
 TupleDesc *cache_field = (TupleDesc *) DatumGetPointer(arg);

 if (*cache_field)
  ReleaseTupleDesc(*cache_field);
 *cache_field = ((void*)0);
}
