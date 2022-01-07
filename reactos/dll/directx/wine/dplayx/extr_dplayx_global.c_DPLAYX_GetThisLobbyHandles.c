
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hInformOnAppStart; scalar_t__ hInformOnAppDeath; scalar_t__ hInformOnSettingRead; } ;
typedef scalar_t__* LPHANDLE ;
typedef TYPE_1__* LPDPLAYX_LOBBYDATA ;
typedef scalar_t__ BOOL ;


 int CloseHandle (scalar_t__) ;
 int DPLAYX_AcquireSemaphore () ;
 int DPLAYX_IsAppIdLobbied (int ,TYPE_1__**) ;
 int DPLAYX_ReleaseSemaphore () ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;

__attribute__((used)) static BOOL DPLAYX_GetThisLobbyHandles( LPHANDLE lphStart,
                                        LPHANDLE lphDeath,
                                        LPHANDLE lphConnRead,
                                        BOOL bClearSetHandles )
{
  LPDPLAYX_LOBBYDATA lpLData;

  DPLAYX_AcquireSemaphore();

  if( !DPLAYX_IsAppIdLobbied( 0, &lpLData ) )
  {
    DPLAYX_ReleaseSemaphore();
    return FALSE;
  }

  if( lphStart != ((void*)0) )
  {
    if( lpLData->hInformOnAppStart == 0 )
    {
      DPLAYX_ReleaseSemaphore();
      return FALSE;
    }

    *lphStart = lpLData->hInformOnAppStart;

    if( bClearSetHandles )
    {
      CloseHandle( lpLData->hInformOnAppStart );
      lpLData->hInformOnAppStart = 0;
    }
  }

  if( lphDeath != ((void*)0) )
  {
    if( lpLData->hInformOnAppDeath == 0 )
    {
      DPLAYX_ReleaseSemaphore();
      return FALSE;
    }

    *lphDeath = lpLData->hInformOnAppDeath;

    if( bClearSetHandles )
    {
      CloseHandle( lpLData->hInformOnAppDeath );
      lpLData->hInformOnAppDeath = 0;
    }
  }

  if( lphConnRead != ((void*)0) )
  {
    if( lpLData->hInformOnSettingRead == 0 )
    {
      DPLAYX_ReleaseSemaphore();
      return FALSE;
    }

    *lphConnRead = lpLData->hInformOnSettingRead;

    if( bClearSetHandles )
    {
      CloseHandle( lpLData->hInformOnSettingRead );
      lpLData->hInformOnSettingRead = 0;
    }
  }

  DPLAYX_ReleaseSemaphore();

  return TRUE;
}
