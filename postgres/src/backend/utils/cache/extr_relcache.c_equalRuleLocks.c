
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ruleId; scalar_t__ event; scalar_t__ enabled; scalar_t__ isInstead; int actions; int qual; } ;
struct TYPE_5__ {int numLocks; TYPE_2__** rules; } ;
typedef TYPE_1__ RuleLock ;
typedef TYPE_2__ RewriteRule ;


 int equal (int ,int ) ;

__attribute__((used)) static bool
equalRuleLocks(RuleLock *rlock1, RuleLock *rlock2)
{
 int i;






 if (rlock1 != ((void*)0))
 {
  if (rlock2 == ((void*)0))
   return 0;
  if (rlock1->numLocks != rlock2->numLocks)
   return 0;
  for (i = 0; i < rlock1->numLocks; i++)
  {
   RewriteRule *rule1 = rlock1->rules[i];
   RewriteRule *rule2 = rlock2->rules[i];

   if (rule1->ruleId != rule2->ruleId)
    return 0;
   if (rule1->event != rule2->event)
    return 0;
   if (rule1->enabled != rule2->enabled)
    return 0;
   if (rule1->isInstead != rule2->isInstead)
    return 0;
   if (!equal(rule1->qual, rule2->qual))
    return 0;
   if (!equal(rule1->actions, rule2->actions))
    return 0;
  }
 }
 else if (rlock2 != ((void*)0))
  return 0;
 return 1;
}
