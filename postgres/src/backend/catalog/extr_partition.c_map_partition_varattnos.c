
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int reltype; } ;
struct TYPE_5__ {int natts; } ;
typedef int Relation ;
typedef int Node ;
typedef int List ;
typedef int AttrNumber ;


 int * NIL ;
 TYPE_1__* RelationGetDescr (int ) ;
 TYPE_3__* RelationGetForm (int ) ;
 int * convert_tuples_by_name_map (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ map_variable_attnos (int *,int,int ,int *,int ,int ,int*) ;

List *
map_partition_varattnos(List *expr, int fromrel_varno,
      Relation to_rel, Relation from_rel,
      bool *found_whole_row)
{
 bool my_found_whole_row = 0;

 if (expr != NIL)
 {
  AttrNumber *part_attnos;

  part_attnos = convert_tuples_by_name_map(RelationGetDescr(to_rel),
             RelationGetDescr(from_rel));
  expr = (List *) map_variable_attnos((Node *) expr,
           fromrel_varno, 0,
           part_attnos,
           RelationGetDescr(from_rel)->natts,
           RelationGetForm(to_rel)->reltype,
           &my_found_whole_row);
 }

 if (found_whole_row)
  *found_whole_row = my_found_whole_row;

 return expr;
}
