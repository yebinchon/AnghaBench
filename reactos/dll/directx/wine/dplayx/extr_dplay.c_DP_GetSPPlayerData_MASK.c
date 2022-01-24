#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* lpPlayerList ;
struct TYPE_5__ {TYPE_1__* lpPData; } ;
struct TYPE_4__ {void* lpSPPlayerData; } ;
typedef  int /*<<< orphan*/  IDirectPlayImpl ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DPID ;

/* Variables and functions */
 int /*<<< orphan*/  DPERR_INVALIDPLAYER ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DP_OK ; 

HRESULT FUNC1( IDirectPlayImpl *lpDP, DPID idPlayer, void **lplpData )
{
  lpPlayerList lpPlayer = FUNC0( lpDP, idPlayer );

  if( lpPlayer == NULL )
  {
    return DPERR_INVALIDPLAYER;
  }

  *lplpData = lpPlayer->lpPData->lpSPPlayerData;

  return DP_OK;
}