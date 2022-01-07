
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int booltesttype; int * arg; int location; } ;
typedef int ParseState ;
typedef int Node ;
typedef int Expr ;
typedef TYPE_1__ BooleanTest ;


 int ERROR ;






 int PREC_GROUP_POSTFIX_IS ;
 scalar_t__ coerce_to_boolean (int *,int *,char const*) ;
 int elog (int ,char*,int) ;
 int emit_precedence_warnings (int *,int ,char*,int *,int *,int ) ;
 scalar_t__ operator_precedence_warning ;
 scalar_t__ transformExprRecurse (int *,int *) ;

__attribute__((used)) static Node *
transformBooleanTest(ParseState *pstate, BooleanTest *b)
{
 const char *clausename;

 if (operator_precedence_warning)
  emit_precedence_warnings(pstate, PREC_GROUP_POSTFIX_IS, "IS",
         (Node *) b->arg, ((void*)0),
         b->location);

 switch (b->booltesttype)
 {
  case 129:
   clausename = "IS TRUE";
   break;
  case 131:
   clausename = "IS NOT TRUE";
   break;
  case 133:
   clausename = "IS FALSE";
   break;
  case 132:
   clausename = "IS NOT FALSE";
   break;
  case 128:
   clausename = "IS UNKNOWN";
   break;
  case 130:
   clausename = "IS NOT UNKNOWN";
   break;
  default:
   elog(ERROR, "unrecognized booltesttype: %d",
     (int) b->booltesttype);
   clausename = ((void*)0);
 }

 b->arg = (Expr *) transformExprRecurse(pstate, (Node *) b->arg);

 b->arg = (Expr *) coerce_to_boolean(pstate,
          (Node *) b->arg,
          clausename);

 return (Node *) b;
}
