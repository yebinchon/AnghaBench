
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonbValue ;
typedef int JsonPathGinNode ;


 int * make_jsp_entry_node (int ) ;
 int make_scalar_key (int *,int) ;

__attribute__((used)) static JsonPathGinNode *
make_jsp_entry_node_scalar(JsonbValue *scalar, bool iskey)
{
 return make_jsp_entry_node(make_scalar_key(scalar, iskey));
}
