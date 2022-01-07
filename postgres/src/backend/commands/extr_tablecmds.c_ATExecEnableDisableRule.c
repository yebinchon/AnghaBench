
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int LOCKMODE ;


 int EnableDisableRule (int ,char const*,char) ;

__attribute__((used)) static void
ATExecEnableDisableRule(Relation rel, const char *rulename,
      char fires_when, LOCKMODE lockmode)
{
 EnableDisableRule(rel, rulename, fires_when);
}
