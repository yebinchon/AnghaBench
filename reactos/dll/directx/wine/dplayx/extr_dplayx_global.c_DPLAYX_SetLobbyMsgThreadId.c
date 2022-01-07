
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwLobbyMsgThreadId; } ;
typedef TYPE_1__* LPDPLAYX_LOBBYDATA ;
typedef int DWORD ;
typedef int BOOL ;


 int DPLAYX_AcquireSemaphore () ;
 int DPLAYX_IsAppIdLobbied (int ,TYPE_1__**) ;
 int DPLAYX_ReleaseSemaphore () ;
 int FALSE ;
 int TRUE ;

BOOL DPLAYX_SetLobbyMsgThreadId( DWORD dwAppId, DWORD dwThreadId )
{
  LPDPLAYX_LOBBYDATA lpLobbyData;

  DPLAYX_AcquireSemaphore();

  if( !DPLAYX_IsAppIdLobbied( dwAppId, &lpLobbyData ) )
  {
    DPLAYX_ReleaseSemaphore();
    return FALSE;
  }

  lpLobbyData->dwLobbyMsgThreadId = dwThreadId;

  DPLAYX_ReleaseSemaphore();

  return TRUE;
}
