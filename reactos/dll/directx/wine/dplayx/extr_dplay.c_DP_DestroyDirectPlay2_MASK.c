#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  lpISP; TYPE_1__* lpCB; } ;
struct TYPE_11__ {TYPE_8__* lpCB; } ;
struct TYPE_15__ {scalar_t__ hEnumSessionThread; scalar_t__ hServiceProvider; scalar_t__ hDPLobbyProvider; TYPE_3__ spData; struct TYPE_15__* lpSessionDesc; TYPE_2__ dplspData; int /*<<< orphan*/  lpNameServerData; } ;
struct TYPE_14__ {int /*<<< orphan*/  lpISP; } ;
struct TYPE_13__ {TYPE_8__* dp2; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* Shutdown ) () ;int /*<<< orphan*/  (* ShutdownEx ) (TYPE_6__*) ;} ;
typedef  TYPE_4__* LPVOID ;
typedef  TYPE_4__ IDirectPlayImpl ;
typedef  TYPE_6__ DPSP_SHUTDOWNDATA ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static BOOL FUNC10( LPVOID lpDP )
{
  IDirectPlayImpl *This = lpDP;

  if( This->dp2->hEnumSessionThread != INVALID_HANDLE_VALUE )
  {
    FUNC7( This->dp2->hEnumSessionThread, 0 );
    FUNC0( This->dp2->hEnumSessionThread );
  }

  /* Finish with the SP - have it shutdown */
  if( This->dp2->spData.lpCB->ShutdownEx )
  {
    DPSP_SHUTDOWNDATA data;

    FUNC6( "Calling SP ShutdownEx\n" );

    data.lpISP = This->dp2->spData.lpISP;

    (*This->dp2->spData.lpCB->ShutdownEx)( &data );
  }
  else if (This->dp2->spData.lpCB->Shutdown ) /* obsolete interface */
  {
    FUNC6( "Calling obsolete SP Shutdown\n" );
    (*This->dp2->spData.lpCB->Shutdown)();
  }

  /* Unload the SP (if it exists) */
  if( This->dp2->hServiceProvider != 0 )
  {
    FUNC1( This->dp2->hServiceProvider );
  }

  /* Unload the Lobby Provider (if it exists) */
  if( This->dp2->hDPLobbyProvider != 0 )
  {
    FUNC1( This->dp2->hDPLobbyProvider );
  }

  /* FIXME: Need to delete receive and send msgs queue contents */

  FUNC5( This->dp2->lpNameServerData );

  FUNC3( FUNC2(), 0, This->dp2->dplspData.lpCB);
  FUNC3( FUNC2(), 0, This->dp2->lpSessionDesc );

  FUNC4( This->dp2->spData.lpISP );

  /* Delete the contents */
  FUNC3( FUNC2(), 0, This->dp2 );

  return TRUE;
}