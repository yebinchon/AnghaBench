
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Oid ;
typedef int Node ;
typedef scalar_t__ CoercionPathType ;
typedef int CoercionForm ;
typedef int CoercionContext ;


 scalar_t__ COERCION_PATH_NONE ;
 int * build_coercion_expression (int *,scalar_t__,int ,int ,int ,int ,int ,int) ;
 int exprTypmod (int *) ;
 scalar_t__ find_typmod_coercion_function (int ,int *) ;
 int hide_coercion_node (int *) ;

__attribute__((used)) static Node *
coerce_type_typmod(Node *node, Oid targetTypeId, int32 targetTypMod,
       CoercionContext ccontext, CoercionForm cformat,
       int location,
       bool hideInputCoercion)
{
 CoercionPathType pathtype;
 Oid funcId;





 if (targetTypMod < 0 || targetTypMod == exprTypmod(node))
  return node;

 pathtype = find_typmod_coercion_function(targetTypeId, &funcId);

 if (pathtype != COERCION_PATH_NONE)
 {

  if (hideInputCoercion)
   hide_coercion_node(node);

  node = build_coercion_expression(node, pathtype, funcId,
           targetTypeId, targetTypMod,
           ccontext, cformat, location);
 }

 return node;
}
