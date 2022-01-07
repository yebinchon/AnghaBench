
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleTableSlot ;
typedef int Relation ;


 int GetCurrentCommandId (int) ;
 int table_tuple_insert (int ,int *,int ,int ,int *) ;

void
simple_table_tuple_insert(Relation rel, TupleTableSlot *slot)
{
 table_tuple_insert(rel, slot, GetCurrentCommandId(1), 0, ((void*)0));
}
