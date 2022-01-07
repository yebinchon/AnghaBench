
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int ParseState ;
typedef scalar_t__ Oid ;
typedef int Node ;
typedef int ListCell ;
typedef int List ;


 int Assert (int) ;
 int COERCE_IMPLICIT_CAST ;
 int COERCION_ASSIGNMENT ;
 int ERRCODE_CANNOT_COERCE ;
 int ERROR ;
 int * NIL ;
 int * coerce_to_target_type (int *,int *,scalar_t__,scalar_t__,int ,int ,int ,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ) ;
 scalar_t__ exprType (int *) ;
 int format_type_be (scalar_t__) ;
 scalar_t__ get_typcollation (scalar_t__) ;
 int parser_errposition (int *,int) ;
 int * transformAssignmentIndirection (int *,int *,char const*,int,scalar_t__,int ,scalar_t__,int *,int *,int *,int) ;
 scalar_t__ transformContainerSubscripts (int *,int *,scalar_t__,scalar_t__,int ,int *,int *) ;
 scalar_t__ transformContainerType (scalar_t__*,int *) ;

__attribute__((used)) static Node *
transformAssignmentSubscripts(ParseState *pstate,
         Node *basenode,
         const char *targetName,
         Oid targetTypeId,
         int32 targetTypMod,
         Oid targetCollation,
         List *subscripts,
         bool isSlice,
         List *indirection,
         ListCell *next_indirection,
         Node *rhs,
         int location)
{
 Node *result;
 Oid containerType;
 int32 containerTypMod;
 Oid elementTypeId;
 Oid typeNeeded;
 Oid collationNeeded;

 Assert(subscripts != NIL);


 containerType = targetTypeId;
 containerTypMod = targetTypMod;
 elementTypeId = transformContainerType(&containerType, &containerTypMod);


 typeNeeded = isSlice ? containerType : elementTypeId;






 if (containerType == targetTypeId)
  collationNeeded = targetCollation;
 else
  collationNeeded = get_typcollation(containerType);


 rhs = transformAssignmentIndirection(pstate,
           ((void*)0),
           targetName,
           1,
           typeNeeded,
           containerTypMod,
           collationNeeded,
           indirection,
           next_indirection,
           rhs,
           location);


 result = (Node *) transformContainerSubscripts(pstate,
               basenode,
               containerType,
               elementTypeId,
               containerTypMod,
               subscripts,
               rhs);


 if (containerType != targetTypeId)
 {
  Oid resulttype = exprType(result);

  result = coerce_to_target_type(pstate,
            result, resulttype,
            targetTypeId, targetTypMod,
            COERCION_ASSIGNMENT,
            COERCE_IMPLICIT_CAST,
            -1);

  if (result == ((void*)0))
   ereport(ERROR,
     (errcode(ERRCODE_CANNOT_COERCE),
      errmsg("cannot cast type %s to %s",
       format_type_be(resulttype),
       format_type_be(targetTypeId)),
      parser_errposition(pstate, location)));
 }

 return result;
}
