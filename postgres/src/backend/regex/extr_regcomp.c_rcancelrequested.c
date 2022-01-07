
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ InterruptPending ;
 scalar_t__ ProcDiePending ;
 scalar_t__ QueryCancelPending ;

__attribute__((used)) static int
rcancelrequested(void)
{
 return InterruptPending && (QueryCancelPending || ProcDiePending);
}
