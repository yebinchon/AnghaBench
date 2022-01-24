#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int dwSize; TYPE_1__* lpSessionDesc; } ;
struct TYPE_9__ {int /*<<< orphan*/  lpConn; } ;
struct TYPE_8__ {int dwSize; } ;
typedef  TYPE_2__* LPDPLAYX_LOBBYDATA ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  DPSESSIONDESC2 ;
typedef  TYPE_3__ DPLCONNECTION ;

/* Variables and functions */
 int /*<<< orphan*/  DPERR_INVALIDPARAMS ; 
 int /*<<< orphan*/  DPERR_NOTLOBBIED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  DP_OK ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 

HRESULT FUNC8
( DWORD dwFlags,
  DWORD dwAppID,
  const DPLCONNECTION *lpConn )
{
  LPDPLAYX_LOBBYDATA lpDplData;

  /* Parameter check */
  if( dwFlags || !lpConn )
  {
    FUNC7("invalid parameters.\n");
    return DPERR_INVALIDPARAMS;
  }

  /* Store information */
  if(  lpConn->dwSize != sizeof(DPLCONNECTION) )
  {
    FUNC7(": old/new DPLCONNECTION type? Size=%08x\n", lpConn->dwSize );

    return DPERR_INVALIDPARAMS;
  }

  FUNC0();

  if ( ! FUNC2( dwAppID, &lpDplData ) )
  {
    FUNC5();

    return DPERR_NOTLOBBIED;
  }

  if(  (!lpConn->lpSessionDesc ) ||
       ( lpConn->lpSessionDesc->dwSize != sizeof( DPSESSIONDESC2 ) )
    )
  {
    FUNC5();

    FUNC7("DPSESSIONDESC passed in? Size=%u\n",
        lpConn->lpSessionDesc?lpConn->lpSessionDesc->dwSize:0 );

    return DPERR_INVALIDPARAMS;
  }

  /* Free the existing memory */
  FUNC4( lpDplData->lpConn );

  lpDplData->lpConn = FUNC3( HEAP_ZERO_MEMORY,
                                            FUNC6( lpConn ) );

  FUNC1( lpDplData->lpConn, lpConn );


  FUNC5();

  /* FIXME: Send a message - I think */

  return DP_OK;
}