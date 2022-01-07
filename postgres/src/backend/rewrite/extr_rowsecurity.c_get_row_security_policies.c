
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int resultRelation; scalar_t__ commandType; TYPE_1__* onConflict; } ;
struct TYPE_7__ {scalar_t__ relkind; int requiredPerms; scalar_t__ checkAsUser; int relid; } ;
struct TYPE_6__ {scalar_t__ action; } ;
typedef int Relation ;
typedef TYPE_2__ RangeTblEntry ;
typedef TYPE_3__ Query ;
typedef scalar_t__ Oid ;
typedef int Node ;
typedef int List ;
typedef scalar_t__ CmdType ;


 int ACL_SELECT ;
 int ACL_UPDATE ;
 int Assert (int) ;
 scalar_t__ CMD_DELETE ;
 scalar_t__ CMD_INSERT ;
 scalar_t__ CMD_SELECT ;
 scalar_t__ CMD_UPDATE ;
 scalar_t__ GetUserId () ;
 int * NIL ;
 int NoLock ;
 scalar_t__ ONCONFLICT_UPDATE ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RELKIND_RELATION ;
 int RLS_NONE ;
 int RLS_NONE_ENV ;
 int WCO_RLS_CONFLICT_CHECK ;
 int WCO_RLS_INSERT_CHECK ;
 int WCO_RLS_UPDATE_CHECK ;
 int add_security_quals (int,int *,int *,int **,int*) ;
 int add_with_check_options (int ,int,int ,int *,int *,int **,int*,int) ;
 int check_enable_rls (int ,scalar_t__,int) ;
 int get_policies_for_relation (int ,scalar_t__,scalar_t__,int **,int **) ;
 int setRuleCheckAsUser (int *,scalar_t__) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
get_row_security_policies(Query *root, RangeTblEntry *rte, int rt_index,
        List **securityQuals, List **withCheckOptions,
        bool *hasRowSecurity, bool *hasSubLinks)
{
 Oid user_id;
 int rls_status;
 Relation rel;
 CmdType commandType;
 List *permissive_policies;
 List *restrictive_policies;


 *securityQuals = NIL;
 *withCheckOptions = NIL;
 *hasRowSecurity = 0;
 *hasSubLinks = 0;


 if (rte->relkind != RELKIND_RELATION &&
  rte->relkind != RELKIND_PARTITIONED_TABLE)
  return;


 user_id = rte->checkAsUser ? rte->checkAsUser : GetUserId();


 rls_status = check_enable_rls(rte->relid, rte->checkAsUser, 0);


 if (rls_status == RLS_NONE)
  return;






 if (rls_status == RLS_NONE_ENV)
 {





  *hasRowSecurity = 1;

  return;
 }
 rel = table_open(rte->relid, NoLock);

 commandType = rt_index == root->resultRelation ?
  root->commandType : CMD_SELECT;
 if (commandType == CMD_SELECT && rte->requiredPerms & ACL_UPDATE)
 {
  List *update_permissive_policies;
  List *update_restrictive_policies;

  get_policies_for_relation(rel, CMD_UPDATE, user_id,
          &update_permissive_policies,
          &update_restrictive_policies);

  add_security_quals(rt_index,
         update_permissive_policies,
         update_restrictive_policies,
         securityQuals,
         hasSubLinks);
 }
 get_policies_for_relation(rel, commandType, user_id, &permissive_policies,
         &restrictive_policies);

 if (commandType == CMD_SELECT ||
  commandType == CMD_UPDATE ||
  commandType == CMD_DELETE)
  add_security_quals(rt_index,
         permissive_policies,
         restrictive_policies,
         securityQuals,
         hasSubLinks);
 if ((commandType == CMD_UPDATE || commandType == CMD_DELETE) &&
  rte->requiredPerms & ACL_SELECT)
 {
  List *select_permissive_policies;
  List *select_restrictive_policies;

  get_policies_for_relation(rel, CMD_SELECT, user_id,
          &select_permissive_policies,
          &select_restrictive_policies);

  add_security_quals(rt_index,
         select_permissive_policies,
         select_restrictive_policies,
         securityQuals,
         hasSubLinks);
 }







 if (commandType == CMD_INSERT || commandType == CMD_UPDATE)
 {

  Assert(rt_index == root->resultRelation);

  add_with_check_options(rel, rt_index,
          commandType == CMD_INSERT ?
          WCO_RLS_INSERT_CHECK : WCO_RLS_UPDATE_CHECK,
          permissive_policies,
          restrictive_policies,
          withCheckOptions,
          hasSubLinks,
          0);
  if (rte->requiredPerms & ACL_SELECT)
  {
   List *select_permissive_policies = NIL;
   List *select_restrictive_policies = NIL;

   get_policies_for_relation(rel, CMD_SELECT, user_id,
           &select_permissive_policies,
           &select_restrictive_policies);
   add_with_check_options(rel, rt_index,
           commandType == CMD_INSERT ?
           WCO_RLS_INSERT_CHECK : WCO_RLS_UPDATE_CHECK,
           select_permissive_policies,
           select_restrictive_policies,
           withCheckOptions,
           hasSubLinks,
           1);
  }





  if (commandType == CMD_INSERT &&
   root->onConflict && root->onConflict->action == ONCONFLICT_UPDATE)
  {
   List *conflict_permissive_policies;
   List *conflict_restrictive_policies;
   List *conflict_select_permissive_policies = NIL;
   List *conflict_select_restrictive_policies = NIL;


   get_policies_for_relation(rel, CMD_UPDATE, user_id,
           &conflict_permissive_policies,
           &conflict_restrictive_policies);







   add_with_check_options(rel, rt_index,
           WCO_RLS_CONFLICT_CHECK,
           conflict_permissive_policies,
           conflict_restrictive_policies,
           withCheckOptions,
           hasSubLinks,
           1);
   if (rte->requiredPerms & ACL_SELECT)
   {
    get_policies_for_relation(rel, CMD_SELECT, user_id,
            &conflict_select_permissive_policies,
            &conflict_select_restrictive_policies);
    add_with_check_options(rel, rt_index,
            WCO_RLS_CONFLICT_CHECK,
            conflict_select_permissive_policies,
            conflict_select_restrictive_policies,
            withCheckOptions,
            hasSubLinks,
            1);
   }


   add_with_check_options(rel, rt_index,
           WCO_RLS_UPDATE_CHECK,
           conflict_permissive_policies,
           conflict_restrictive_policies,
           withCheckOptions,
           hasSubLinks,
           0);







   if (rte->requiredPerms & ACL_SELECT)
    add_with_check_options(rel, rt_index,
            WCO_RLS_UPDATE_CHECK,
            conflict_select_permissive_policies,
            conflict_select_restrictive_policies,
            withCheckOptions,
            hasSubLinks,
            1);
  }
 }

 table_close(rel, NoLock);





 setRuleCheckAsUser((Node *) *securityQuals, rte->checkAsUser);
 setRuleCheckAsUser((Node *) *withCheckOptions, rte->checkAsUser);





 *hasRowSecurity = 1;

 return;
}
