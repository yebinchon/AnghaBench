
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* hInformOnSettingRead; void* hInformOnAppDeath; void* hInformOnAppStart; } ;
typedef TYPE_1__* LPDPLAYX_LOBBYDATA ;
typedef void* HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int DPLAYX_AcquireSemaphore () ;
 int DPLAYX_IsAppIdLobbied (scalar_t__,TYPE_1__**) ;
 int DPLAYX_ReleaseSemaphore () ;
 int FALSE ;
 int TRUE ;

BOOL DPLAYX_SetLobbyHandles( DWORD dwAppID,
                             HANDLE hStart, HANDLE hDeath, HANDLE hConnRead )
{
  LPDPLAYX_LOBBYDATA lpLData;


  if( dwAppID == 0 )
  {
    return FALSE;
  }

  DPLAYX_AcquireSemaphore();

  if( !DPLAYX_IsAppIdLobbied( dwAppID, &lpLData ) )
  {
    DPLAYX_ReleaseSemaphore();
    return FALSE;
  }

  lpLData->hInformOnAppStart = hStart;
  lpLData->hInformOnAppDeath = hDeath;
  lpLData->hInformOnSettingRead = hConnRead;

  DPLAYX_ReleaseSemaphore();

  return TRUE;
}
