
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lpConn; } ;
typedef int * LPVOID ;
typedef scalar_t__* LPDWORD ;
typedef TYPE_1__* LPDPLAYX_LOBBYDATA ;
typedef int HRESULT ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int DPERR_BUFFERTOOSMALL ;
 int DPERR_NOTLOBBIED ;
 int DPLAYX_AcquireSemaphore () ;
 int DPLAYX_CopyConnStructW (int *,int ) ;
 scalar_t__ DPLAYX_GetThisLobbyHandles (int *,int *,scalar_t__*,int ) ;
 int DPLAYX_IsAppIdLobbied (scalar_t__,TYPE_1__**) ;
 int DPLAYX_ReleaseSemaphore () ;
 scalar_t__ DPLAYX_SizeOfLobbyDataW (int ) ;
 int DP_OK ;
 int FALSE ;
 scalar_t__ SetEvent (scalar_t__) ;
 int TRACE (char*,scalar_t__,char*) ;
 int TRUE ;

HRESULT DPLAYX_GetConnectionSettingsW
( DWORD dwAppID,
  LPVOID lpData,
  LPDWORD lpdwDataSize )
{
  LPDPLAYX_LOBBYDATA lpDplData;
  DWORD dwRequiredDataSize = 0;
  HANDLE hInformOnSettingRead;

  DPLAYX_AcquireSemaphore();

  if ( ! DPLAYX_IsAppIdLobbied( dwAppID, &lpDplData ) )
  {
    DPLAYX_ReleaseSemaphore();
    return DPERR_NOTLOBBIED;
  }

  dwRequiredDataSize = DPLAYX_SizeOfLobbyDataW( lpDplData->lpConn );




  if ( ( lpData == ((void*)0) ) ||
       ( *lpdwDataSize < dwRequiredDataSize )
     )
  {
    DPLAYX_ReleaseSemaphore();

    *lpdwDataSize = DPLAYX_SizeOfLobbyDataW( lpDplData->lpConn );

    return DPERR_BUFFERTOOSMALL;
  }

  DPLAYX_CopyConnStructW( lpData, lpDplData->lpConn );

  DPLAYX_ReleaseSemaphore();


  if( DPLAYX_GetThisLobbyHandles( ((void*)0), ((void*)0), &hInformOnSettingRead, FALSE ) &&
      hInformOnSettingRead
    )
  {
    BOOL bSuccess;
    bSuccess = SetEvent( hInformOnSettingRead );
    TRACE( "Signalling setting read event %p %s\n",
             hInformOnSettingRead, bSuccess ? "succeed" : "failed" );


    DPLAYX_GetThisLobbyHandles( ((void*)0), ((void*)0), &hInformOnSettingRead, TRUE );
  }

  return DP_OK;
}
