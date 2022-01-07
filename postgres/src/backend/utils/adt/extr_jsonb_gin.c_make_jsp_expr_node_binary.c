
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__** args; } ;
typedef int JsonPathGinNodeType ;
typedef TYPE_1__ JsonPathGinNode ;


 TYPE_1__* make_jsp_expr_node (int ,int) ;

__attribute__((used)) static JsonPathGinNode *
make_jsp_expr_node_binary(JsonPathGinNodeType type,
        JsonPathGinNode *arg1, JsonPathGinNode *arg2)
{
 JsonPathGinNode *node = make_jsp_expr_node(type, 2);

 node->args[0] = arg1;
 node->args[1] = arg2;

 return node;
}
