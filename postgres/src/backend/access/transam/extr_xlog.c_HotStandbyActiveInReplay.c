
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ AmStartupProcess () ;
 int Assert (int) ;
 int IsPostmasterEnvironment ;
 int LocalHotStandbyActive ;

bool
HotStandbyActiveInReplay(void)
{
 Assert(AmStartupProcess() || !IsPostmasterEnvironment);
 return LocalHotStandbyActive;
}
