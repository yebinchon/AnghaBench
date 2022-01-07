
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Var ;
typedef int TargetEntry ;
struct TYPE_3__ {int targetList; int resultRelation; } ;
typedef int Relation ;
typedef int RangeTblEntry ;
typedef TYPE_1__ Query ;
typedef int Expr ;


 int InvalidOid ;
 int SelfItemPointerAttributeNumber ;
 int TIDOID ;
 int lappend (int ,int *) ;
 scalar_t__ list_length (int ) ;
 int * makeTargetEntry (int *,scalar_t__,int ,int) ;
 int * makeVar (int ,int ,int ,int,int ,int ) ;
 int pstrdup (char const*) ;

__attribute__((used)) static void
postgresAddForeignUpdateTargets(Query *parsetree,
        RangeTblEntry *target_rte,
        Relation target_relation)
{
 Var *var;
 const char *attrname;
 TargetEntry *tle;






 var = makeVar(parsetree->resultRelation,
      SelfItemPointerAttributeNumber,
      TIDOID,
      -1,
      InvalidOid,
      0);


 attrname = "ctid";

 tle = makeTargetEntry((Expr *) var,
        list_length(parsetree->targetList) + 1,
        pstrdup(attrname),
        1);


 parsetree->targetList = lappend(parsetree->targetList, tle);
}
