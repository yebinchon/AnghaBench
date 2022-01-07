
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int dwSize; TYPE_1__* lpSessionDesc; } ;
struct TYPE_9__ {int lpConn; } ;
struct TYPE_8__ {int dwSize; } ;
typedef TYPE_2__* LPDPLAYX_LOBBYDATA ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;
typedef int DPSESSIONDESC2 ;
typedef TYPE_3__ DPLCONNECTION ;


 int DPERR_INVALIDPARAMS ;
 int DPERR_NOTLOBBIED ;
 int DPLAYX_AcquireSemaphore () ;
 int DPLAYX_CopyConnStructA (int ,TYPE_3__ const*) ;
 int DPLAYX_IsAppIdLobbied (scalar_t__,TYPE_2__**) ;
 int DPLAYX_PrivHeapAlloc (int ,int ) ;
 int DPLAYX_PrivHeapFree (int ) ;
 int DPLAYX_ReleaseSemaphore () ;
 int DPLAYX_SizeOfLobbyDataA (TYPE_3__ const*) ;
 int DP_OK ;
 int ERR (char*,...) ;
 int HEAP_ZERO_MEMORY ;

HRESULT DPLAYX_SetConnectionSettingsA
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
    ERR(": old/new DPLCONNECTION type? Size=%08x\n", lpConn->dwSize );

    return DPERR_INVALIDPARAMS;
  }

  DPLAYX_AcquireSemaphore();

  if ( ! DPLAYX_IsAppIdLobbied( dwAppID, &lpDplData ) )
  {
    DPLAYX_ReleaseSemaphore();

    return DPERR_NOTLOBBIED;
  }

  if( (!lpConn->lpSessionDesc ) ||
       ( lpConn->lpSessionDesc->dwSize != sizeof( DPSESSIONDESC2 ) )
    )
  {
    DPLAYX_ReleaseSemaphore();

    ERR("DPSESSIONDESC passed in? Size=%u\n",
        lpConn->lpSessionDesc?lpConn->lpSessionDesc->dwSize:0 );

    return DPERR_INVALIDPARAMS;
  }


  DPLAYX_PrivHeapFree( lpDplData->lpConn );

  lpDplData->lpConn = DPLAYX_PrivHeapAlloc( HEAP_ZERO_MEMORY,
                                            DPLAYX_SizeOfLobbyDataA( lpConn ) );

  DPLAYX_CopyConnStructA( lpDplData->lpConn, lpConn );


  DPLAYX_ReleaseSemaphore();



  return DP_OK;
}
