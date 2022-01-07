
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* rd_rules; TYPE_1__* rd_rel; } ;
struct TYPE_8__ {scalar_t__ event; int actions; } ;
struct TYPE_7__ {int numLocks; TYPE_3__** rules; } ;
struct TYPE_6__ {scalar_t__ relkind; } ;
typedef TYPE_3__ RewriteRule ;
typedef TYPE_4__* Relation ;
typedef int Query ;


 int Assert (int) ;
 scalar_t__ CMD_SELECT ;
 int ERROR ;
 scalar_t__ RELKIND_VIEW ;
 int elog (int ,char*) ;
 scalar_t__ linitial (int ) ;
 int list_length (int ) ;

Query *
get_view_query(Relation view)
{
 int i;

 Assert(view->rd_rel->relkind == RELKIND_VIEW);

 for (i = 0; i < view->rd_rules->numLocks; i++)
 {
  RewriteRule *rule = view->rd_rules->rules[i];

  if (rule->event == CMD_SELECT)
  {

   if (list_length(rule->actions) != 1)
    elog(ERROR, "invalid _RETURN rule action specification");

   return (Query *) linitial(rule->actions);
  }
 }

 elog(ERROR, "failed to find _RETURN rule for view");
 return ((void*)0);
}
