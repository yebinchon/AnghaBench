
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleDesc ;
typedef int HeapTuple ;


 int CreateTupleDesc (int,int ) ;
 int DEBUG4 ;
 int* Nulls ;
 int attrtypes ;
 int boot_reldesc ;
 int elog (int ,char*,...) ;
 int heap_form_tuple (int ,int ,int*) ;
 int heap_freetuple (int ) ;
 int numattr ;
 int pfree (int ) ;
 int simple_heap_insert (int ,int ) ;
 int values ;

void
InsertOneTuple(void)
{
 HeapTuple tuple;
 TupleDesc tupDesc;
 int i;

 elog(DEBUG4, "inserting row with %d columns", numattr);

 tupDesc = CreateTupleDesc(numattr, attrtypes);
 tuple = heap_form_tuple(tupDesc, values, Nulls);
 pfree(tupDesc);

 simple_heap_insert(boot_reldesc, tuple);
 heap_freetuple(tuple);
 elog(DEBUG4, "row inserted");




 for (i = 0; i < numattr; i++)
  Nulls[i] = 0;
}
