
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ParseState ;
typedef int Node ;


 int Assert (int) ;
 int PREC_GROUP_IN ;
 int PREC_GROUP_NOT_IN ;
 int PREC_GROUP_POSTFIX_IS ;
 int PREC_GROUP_POSTFIX_OP ;
 int PREC_GROUP_PREFIX_OP ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errmsg (char*,char const*,char const*) ;
 scalar_t__* oldprecedence_l ;
 scalar_t__* oldprecedence_r ;
 int operator_precedence_group (int *,char const**) ;
 int parser_errposition (int *,int) ;

__attribute__((used)) static void
emit_precedence_warnings(ParseState *pstate,
       int opgroup, const char *opname,
       Node *lchild, Node *rchild,
       int location)
{
 int cgroup;
 const char *copname;

 Assert(opgroup > 0);
 cgroup = operator_precedence_group(lchild, &copname);
 if (cgroup > 0)
 {
  if (oldprecedence_l[cgroup] < oldprecedence_r[opgroup] &&
   cgroup != PREC_GROUP_IN &&
   cgroup != PREC_GROUP_NOT_IN &&
   cgroup != PREC_GROUP_POSTFIX_OP &&
   cgroup != PREC_GROUP_POSTFIX_IS)
   ereport(WARNING,
     (errmsg("operator precedence change: %s is now lower precedence than %s",
       opname, copname),
      parser_errposition(pstate, location)));
 }
 cgroup = operator_precedence_group(rchild, &copname);
 if (cgroup > 0)
 {
  if (oldprecedence_r[cgroup] <= oldprecedence_l[opgroup] &&
   cgroup != PREC_GROUP_PREFIX_OP)
   ereport(WARNING,
     (errmsg("operator precedence change: %s is now lower precedence than %s",
       opname, copname),
      parser_errposition(pstate, location)));
 }
}
