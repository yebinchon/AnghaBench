#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {TYPE_6__* dp2; } ;
struct TYPE_16__ {int /*<<< orphan*/  lpISP; TYPE_4__* lpCB; void* dwSPVersion; } ;
struct TYPE_14__ {int /*<<< orphan*/  lpISP; TYPE_2__* lpCB; void* dwSPVersion; } ;
struct TYPE_17__ {TYPE_5__ dplspData; TYPE_3__ spData; TYPE_1__* lpSessionDesc; int /*<<< orphan*/  lpNameServerData; int /*<<< orphan*/  repliesExpected; int /*<<< orphan*/  sendMsgs; int /*<<< orphan*/  receiveMsgs; void* bHostInterface; scalar_t__ dwEnumSessionLock; int /*<<< orphan*/  hEnumSessionThread; void* bConnectionOpen; } ;
struct TYPE_15__ {int dwSize; } ;
struct TYPE_13__ {int dwSize; void* dwVersion; } ;
struct TYPE_12__ {int dwSize; } ;
typedef  TYPE_7__* LPVOID ;
typedef  TYPE_7__ IDirectPlayImpl ;
typedef  void* BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* DPSP_MAJORVERSION ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IID_IDPLobbySP ; 
 int /*<<< orphan*/  IID_IDirectPlaySP ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void**,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void**,TYPE_7__*) ; 

__attribute__((used)) static BOOL FUNC7( LPVOID lpDP )
{
  IDirectPlayImpl *This = lpDP;

  This->dp2 = FUNC3( FUNC2(), HEAP_ZERO_MEMORY, sizeof( *(This->dp2) ) );
  if ( This->dp2 == NULL )
  {
    return FALSE;
  }

  This->dp2->bConnectionOpen = FALSE;

  This->dp2->hEnumSessionThread = INVALID_HANDLE_VALUE;
  This->dp2->dwEnumSessionLock = 0;

  This->dp2->bHostInterface = FALSE;

  FUNC0(This->dp2->receiveMsgs);
  FUNC0(This->dp2->sendMsgs);
  FUNC0(This->dp2->repliesExpected);

  if( !FUNC4( &This->dp2->lpNameServerData ) )
  {
    /* FIXME: Memory leak */
    return FALSE;
  }

  /* Provide an initial session desc with nothing in it */
  This->dp2->lpSessionDesc = FUNC3( FUNC2(),
                                        HEAP_ZERO_MEMORY,
                                        sizeof( *This->dp2->lpSessionDesc ) );
  if( This->dp2->lpSessionDesc == NULL )
  {
    /* FIXME: Memory leak */
    return FALSE;
  }
  This->dp2->lpSessionDesc->dwSize = sizeof( *This->dp2->lpSessionDesc );

  /* We are emulating a dp 6 implementation */
  This->dp2->spData.dwSPVersion = DPSP_MAJORVERSION;

  This->dp2->spData.lpCB = FUNC3( FUNC2(), HEAP_ZERO_MEMORY,
                                      sizeof( *This->dp2->spData.lpCB ) );
  This->dp2->spData.lpCB->dwSize = sizeof( *This->dp2->spData.lpCB );
  This->dp2->spData.lpCB->dwVersion = DPSP_MAJORVERSION;

  /* This is the pointer to the service provider */
  if ( FUNC1( FUNC5( &IID_IDirectPlaySP, (void**)&This->dp2->spData.lpISP, This ) ) )
  {
    /* FIXME: Memory leak */
    return FALSE;
  }

  /* Setup lobby provider information */
  This->dp2->dplspData.dwSPVersion = DPSP_MAJORVERSION;
  This->dp2->dplspData.lpCB = FUNC3( FUNC2(), HEAP_ZERO_MEMORY,
                                         sizeof( *This->dp2->dplspData.lpCB ) );
  This->dp2->dplspData.lpCB->dwSize = sizeof(  *This->dp2->dplspData.lpCB );

  if( FUNC1( FUNC6( &IID_IDPLobbySP, (void**)&This->dp2->dplspData.lpISP, This ) )
    )
  {
    /* FIXME: Memory leak */
    return FALSE;
  }

  return TRUE;
}