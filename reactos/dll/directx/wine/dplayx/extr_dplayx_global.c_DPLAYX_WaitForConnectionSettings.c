
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bWaitForConnectionSettings; } ;
typedef TYPE_1__* LPDPLAYX_LOBBYDATA ;
typedef int BOOL ;


 int DPLAYX_AcquireSemaphore () ;
 int DPLAYX_IsAppIdLobbied (int ,TYPE_1__**) ;
 int DPLAYX_ReleaseSemaphore () ;
 int FALSE ;
 int TRUE ;

BOOL DPLAYX_WaitForConnectionSettings( BOOL bWait )
{
  LPDPLAYX_LOBBYDATA lpLobbyData;

  DPLAYX_AcquireSemaphore();

  if( !DPLAYX_IsAppIdLobbied( 0, &lpLobbyData ) )
  {
    DPLAYX_ReleaseSemaphore();
    return FALSE;
  }

  lpLobbyData->bWaitForConnectionSettings = bWait;

  DPLAYX_ReleaseSemaphore();

  return TRUE;
}
