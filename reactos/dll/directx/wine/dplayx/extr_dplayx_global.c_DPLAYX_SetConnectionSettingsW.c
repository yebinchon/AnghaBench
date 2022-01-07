
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int dwSize; } ;
struct TYPE_7__ {int lpConn; } ;
typedef TYPE_1__* LPDPLAYX_LOBBYDATA ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;
typedef TYPE_2__ DPLCONNECTION ;


 int DPERR_INVALIDPARAMS ;
 int DPERR_NOTLOBBIED ;
 int DPLAYX_AcquireSemaphore () ;
 int DPLAYX_CopyConnStructW (int ,TYPE_2__ const*) ;
 int DPLAYX_IsAppIdLobbied (scalar_t__,TYPE_1__**) ;
 int DPLAYX_PrivHeapAlloc (int ,int ) ;
 int DPLAYX_PrivHeapFree (int ) ;
 int DPLAYX_ReleaseSemaphore () ;
 int DPLAYX_SizeOfLobbyDataW (TYPE_2__ const*) ;
 int DP_OK ;
 int ERR (char*,...) ;
 int HEAP_ZERO_MEMORY ;

HRESULT DPLAYX_SetConnectionSettingsW
( DWORD dwFlags,
  DWORD dwAppID,
  const DPLCONNECTION *lpConn )
{
  LPDPLAYX_LOBBYDATA lpDplData;


  if( dwFlags || !lpConn )
  {
    ERR("invalid parameters.\n");
    return DPERR_INVALIDPARAMS;
  }


  if( lpConn->dwSize != sizeof(DPLCONNECTION) )
  {
    ERR(": old/new DPLCONNECTION type? Size=%u\n", lpConn->dwSize );

    return DPERR_INVALIDPARAMS;
  }

  DPLAYX_AcquireSemaphore();

  if ( ! DPLAYX_IsAppIdLobbied( dwAppID, &lpDplData ) )
  {
    DPLAYX_ReleaseSemaphore();

    return DPERR_NOTLOBBIED;
  }


  DPLAYX_PrivHeapFree( lpDplData->lpConn );

  lpDplData->lpConn = DPLAYX_PrivHeapAlloc( HEAP_ZERO_MEMORY,
                                            DPLAYX_SizeOfLobbyDataW( lpConn ) );

  DPLAYX_CopyConnStructW( lpDplData->lpConn, lpConn );


  DPLAYX_ReleaseSemaphore();



  return DP_OK;
}
