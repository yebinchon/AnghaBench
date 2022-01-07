
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; int bfactor; int boffset; int maxq; int minq; TYPE_1__* led; } ;
typedef TYPE_2__ rule_t ;
struct TYPE_4__ {int sysfspath; } ;


 int LOG_INFO ;
 int syslog (int ,char*,int ,int ,int ,int ,int ) ;

void log_rules(rule_t *rules)
{
 rule_t *rule = rules;
 while (rule)
 {
  syslog(LOG_INFO, " %s r: %d..%d, o: %d, f: %d\n",
   rule->led->sysfspath,
   rule->minq, rule->maxq,
   rule->boffset, rule->bfactor);
  rule = rule->next;
 }
}
