
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int replace; int instead; int event; int rulename; int relation; } ;
typedef TYPE_1__ RuleStmt ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef int Node ;
typedef int List ;


 int AccessExclusiveLock ;
 int DefineQueryRewrite (int ,int ,int *,int ,int ,int ,int *) ;
 int RangeVarGetRelid (int ,int ,int) ;
 int transformRuleStmt (TYPE_1__*,char const*,int **,int **) ;

ObjectAddress
DefineRule(RuleStmt *stmt, const char *queryString)
{
 List *actions;
 Node *whereClause;
 Oid relId;


 transformRuleStmt(stmt, queryString, &actions, &whereClause);





 relId = RangeVarGetRelid(stmt->relation, AccessExclusiveLock, 0);


 return DefineQueryRewrite(stmt->rulename,
         relId,
         whereClause,
         stmt->event,
         stmt->instead,
         stmt->replace,
         actions);
}
