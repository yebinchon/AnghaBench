
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int for_execute; } ;
typedef TYPE_1__ acquireLocksOnSubLinks_context ;
struct TYPE_8__ {int hasSubLinks; int targetList; int rtable; } ;
typedef TYPE_2__ Query ;
typedef int Node ;
typedef scalar_t__ CmdType ;


 int AddInvertedQual (TYPE_2__*,int *) ;
 scalar_t__ CMD_INSERT ;
 scalar_t__ CMD_UPDATE ;
 int ChangeVarNodes (int *,int ,int,int ) ;
 int PRS2_NEW_VARNO ;
 int PRS2_OLD_VARNO ;
 int REPLACEVARS_CHANGE_VARNO ;
 int REPLACEVARS_SUBSTITUTE_NULL ;
 int * ReplaceVarsFromTargetList (int *,int ,int ,int ,int ,int ,int,int *) ;
 int acquireLocksOnSubLinks (int *,TYPE_1__*) ;
 int * copyObject (int *) ;
 int rt_fetch (int,int ) ;

__attribute__((used)) static Query *
CopyAndAddInvertedQual(Query *parsetree,
        Node *rule_qual,
        int rt_index,
        CmdType event)
{

 Node *new_qual = copyObject(rule_qual);
 acquireLocksOnSubLinks_context context;

 context.for_execute = 1;







 (void) acquireLocksOnSubLinks(new_qual, &context);


 ChangeVarNodes(new_qual, PRS2_OLD_VARNO, rt_index, 0);

 if (event == CMD_INSERT || event == CMD_UPDATE)
  new_qual = ReplaceVarsFromTargetList(new_qual,
            PRS2_NEW_VARNO,
            0,
            rt_fetch(rt_index,
               parsetree->rtable),
            parsetree->targetList,
            (event == CMD_UPDATE) ?
            REPLACEVARS_CHANGE_VARNO :
            REPLACEVARS_SUBSTITUTE_NULL,
            rt_index,
            &parsetree->hasSubLinks);

 AddInvertedQual(parsetree, new_qual);

 return parsetree;
}
