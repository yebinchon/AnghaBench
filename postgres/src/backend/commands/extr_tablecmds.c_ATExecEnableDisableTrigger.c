
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int LOCKMODE ;


 int EnableDisableTrigger (int ,char const*,char,int,int ) ;

__attribute__((used)) static void
ATExecEnableDisableTrigger(Relation rel, const char *trigname,
         char fires_when, bool skip_system, LOCKMODE lockmode)
{
 EnableDisableTrigger(rel, trigname, fires_when, skip_system, lockmode);
}
