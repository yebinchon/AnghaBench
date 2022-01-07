
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Async_UnlistenAll () ;
 int DropAllPreparedStatements () ;
 int LockReleaseAll (int ,int) ;
 int NIL ;
 int PortalHashTableDeleteAll () ;
 int PreventInTransactionBlock (int,char*) ;
 int ResetAllOptions () ;
 int ResetPlanCache () ;
 int ResetSequenceCaches () ;
 int ResetTempTableNamespace () ;
 int SetPGVariable (char*,int ,int) ;
 int USER_LOCKMETHOD ;

__attribute__((used)) static void
DiscardAll(bool isTopLevel)
{







 PreventInTransactionBlock(isTopLevel, "DISCARD ALL");


 PortalHashTableDeleteAll();
 SetPGVariable("session_authorization", NIL, 0);
 ResetAllOptions();
 DropAllPreparedStatements();
 Async_UnlistenAll();
 LockReleaseAll(USER_LOCKMETHOD, 1);
 ResetPlanCache();
 ResetTempTableNamespace();
 ResetSequenceCaches();
}
