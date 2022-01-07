
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int es_range_table_size; int * es_rowmarks; int * es_relations; int * es_range_table; } ;
typedef int Relation ;
typedef int List ;
typedef TYPE_1__ EState ;


 int list_length (int *) ;
 scalar_t__ palloc0 (int) ;

void
ExecInitRangeTable(EState *estate, List *rangeTable)
{

 estate->es_range_table = rangeTable;


 estate->es_range_table_size = list_length(rangeTable);






 estate->es_relations = (Relation *)
  palloc0(estate->es_range_table_size * sizeof(Relation));





 estate->es_rowmarks = ((void*)0);
}
