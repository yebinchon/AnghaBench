
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ParseState ;
typedef int Oid ;
typedef int Node ;


 int COERCE_IMPLICIT_CAST ;
 int COERCION_IMPLICIT ;
 int ERRCODE_CANNOT_COERCE ;
 int ERROR ;
 scalar_t__ can_coerce_type (int,int *,int *,int ) ;
 int * coerce_type (int *,int *,int ,int ,int,int ,int ,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,int ,int ) ;
 int exprLocation (int *) ;
 int exprType (int *) ;
 int format_type_be (int ) ;
 int parser_errposition (int *,int ) ;

Node *
coerce_to_common_type(ParseState *pstate, Node *node,
       Oid targetTypeId, const char *context)
{
 Oid inputTypeId = exprType(node);

 if (inputTypeId == targetTypeId)
  return node;
 if (can_coerce_type(1, &inputTypeId, &targetTypeId, COERCION_IMPLICIT))
  node = coerce_type(pstate, node, inputTypeId, targetTypeId, -1,
         COERCION_IMPLICIT, COERCE_IMPLICIT_CAST, -1);
 else
  ereport(ERROR,
    (errcode(ERRCODE_CANNOT_COERCE),

     errmsg("%s could not convert type %s to %s",
      context,
      format_type_be(inputTypeId),
      format_type_be(targetTypeId)),
     parser_errposition(pstate, exprLocation(node))));
 return node;
}
