
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;
typedef int JsonbValue ;
typedef int JsonPathItem ;
typedef int JsonPathGinPath ;
typedef int JsonPathGinNode ;
typedef int JsonPathGinContext ;


 int JSP_GIN_AND ;
 int * extract_jsp_path_expr_nodes (int *,int ,int *,int *) ;
 int * linitial (int *) ;
 int list_length (int *) ;
 int * make_jsp_expr_node_args (int ,int *) ;

__attribute__((used)) static JsonPathGinNode *
extract_jsp_path_expr(JsonPathGinContext *cxt, JsonPathGinPath path,
       JsonPathItem *jsp, JsonbValue *scalar)
{

 List *nodes = extract_jsp_path_expr_nodes(cxt, path, jsp, scalar);

 if (list_length(nodes) <= 0)

  return ((void*)0);

 if (list_length(nodes) == 1)
  return linitial(nodes);


 return make_jsp_expr_node_args(JSP_GIN_AND, nodes);
}
