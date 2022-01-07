
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* lpPlayerList ;
struct TYPE_5__ {TYPE_1__* lpPData; } ;
struct TYPE_4__ {void* lpSPPlayerData; } ;
typedef int IDirectPlayImpl ;
typedef int HRESULT ;
typedef int DPID ;


 int DPERR_INVALIDPLAYER ;
 TYPE_2__* DP_FindPlayer (int *,int ) ;
 int DP_OK ;

HRESULT DP_GetSPPlayerData( IDirectPlayImpl *lpDP, DPID idPlayer, void **lplpData )
{
  lpPlayerList lpPlayer = DP_FindPlayer( lpDP, idPlayer );

  if( lpPlayer == ((void*)0) )
  {
    return DPERR_INVALIDPLAYER;
  }

  *lplpData = lpPlayer->lpPData->lpSPPlayerData;

  return DP_OK;
}
