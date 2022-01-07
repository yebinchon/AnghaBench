
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int target_varno; int sublevels_up; int map_length; int* found_whole_row; int to_rowtype; int const* attno_map; } ;
typedef TYPE_1__ map_variable_attnos_context ;
typedef int Oid ;
typedef int Node ;
typedef int AttrNumber ;


 int map_variable_attnos_mutator ;
 int * query_or_expression_tree_mutator (int *,int ,void*,int ) ;

Node *
map_variable_attnos(Node *node,
     int target_varno, int sublevels_up,
     const AttrNumber *attno_map, int map_length,
     Oid to_rowtype, bool *found_whole_row)
{
 map_variable_attnos_context context;

 context.target_varno = target_varno;
 context.sublevels_up = sublevels_up;
 context.attno_map = attno_map;
 context.map_length = map_length;
 context.to_rowtype = to_rowtype;
 context.found_whole_row = found_whole_row;

 *found_whole_row = 0;





 return query_or_expression_tree_mutator(node,
           map_variable_attnos_mutator,
           (void *) &context,
           0);
}
