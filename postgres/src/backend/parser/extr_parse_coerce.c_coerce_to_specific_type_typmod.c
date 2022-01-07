
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int ParseState ;
typedef int Oid ;
typedef int Node ;


 int COERCE_IMPLICIT_CAST ;
 int COERCION_ASSIGNMENT ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERROR ;
 int * coerce_to_target_type (int *,int *,int ,int ,int ,int ,int ,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,...) ;
 int exprLocation (int *) ;
 int exprType (int *) ;
 scalar_t__ expression_returns_set (int *) ;
 int format_type_be (int ) ;
 int parser_errposition (int *,int ) ;

Node *
coerce_to_specific_type_typmod(ParseState *pstate, Node *node,
          Oid targetTypeId, int32 targetTypmod,
          const char *constructName)
{
 Oid inputTypeId = exprType(node);

 if (inputTypeId != targetTypeId)
 {
  Node *newnode;

  newnode = coerce_to_target_type(pstate, node, inputTypeId,
          targetTypeId, targetTypmod,
          COERCION_ASSIGNMENT,
          COERCE_IMPLICIT_CAST,
          -1);
  if (newnode == ((void*)0))
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),

      errmsg("argument of %s must be type %s, not type %s",
       constructName,
       format_type_be(targetTypeId),
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
