
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int CancelDBBackends (int ,int ,int) ;
 scalar_t__ CountDBBackends (int ) ;
 int PROCSIG_RECOVERY_CONFLICT_DATABASE ;
 int pg_usleep (int) ;

void
ResolveRecoveryConflictWithDatabase(Oid dbid)
{
 while (CountDBBackends(dbid) > 0)
 {
  CancelDBBackends(dbid, PROCSIG_RECOVERY_CONFLICT_DATABASE, 1);





  pg_usleep(10000);
 }
}
