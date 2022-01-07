
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ParseState ;
typedef int Oid ;
typedef int Node ;


 int * coerce_to_specific_type_typmod (int *,int *,int ,int,char const*) ;

Node *
coerce_to_specific_type(ParseState *pstate, Node *node,
      Oid targetTypeId,
      const char *constructName)
{
 return coerce_to_specific_type_typmod(pstate, node,
            targetTypeId, -1,
            constructName);
}
