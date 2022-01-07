
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ParseState ;
typedef scalar_t__ Oid ;
typedef int Node ;


 scalar_t__ BOOLOID ;
 int COERCE_IMPLICIT_CAST ;
 int COERCION_ASSIGNMENT ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERROR ;
 int * coerce_to_target_type (int *,int *,scalar_t__,scalar_t__,int,int ,int ,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,...) ;
 int exprLocation (int *) ;
 scalar_t__ exprType (int *) ;
 scalar_t__ expression_returns_set (int *) ;
 int format_type_be (scalar_t__) ;
 int parser_errposition (int *,int ) ;

Node *
coerce_to_boolean(ParseState *pstate, Node *node,
      const char *constructName)
{
 Oid inputTypeId = exprType(node);

 if (inputTypeId != BOOLOID)
 {
  Node *newnode;

  newnode = coerce_to_target_type(pstate, node, inputTypeId,
          BOOLOID, -1,
          COERCION_ASSIGNMENT,
          COERCE_IMPLICIT_CAST,
          -1);
  if (newnode == ((void*)0))
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),

      errmsg("argument of %s must be type %s, not type %s",
       constructName, "boolean",
       format_type_be(inputTypeId)),
      parser_errposition(pstate, exprLocation(node))));
  node = newnode;
 }

 if (expression_returns_set(node))
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),

     errmsg("argument of %s must not return a set",
      constructName),
     parser_errposition(pstate, exprLocation(node))));

 return node;
}
