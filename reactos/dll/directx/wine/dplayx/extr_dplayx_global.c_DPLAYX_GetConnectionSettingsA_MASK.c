#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lpConn; } ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  scalar_t__* LPDWORD ;
typedef  TYPE_1__* LPDPLAYX_LOBBYDATA ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  DPERR_BUFFERTOOSMALL ; 
 int /*<<< orphan*/  DPERR_NOTLOBBIED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DP_OK ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  TRUE ; 

HRESULT FUNC8
( DWORD dwAppID,
  LPVOID lpData,
  LPDWORD lpdwDataSize )
{
  LPDPLAYX_LOBBYDATA lpDplData;
  DWORD              dwRequiredDataSize = 0;
  HANDLE             hInformOnSettingRead;

  FUNC0();

  if ( ! FUNC3( dwAppID, &lpDplData ) )
  {
    FUNC4();

    FUNC7( "Application 0x%08x is not lobbied\n", dwAppID );
    return DPERR_NOTLOBBIED;
  }

  dwRequiredDataSize = FUNC5( lpDplData->lpConn );

  /* Do they want to know the required buffer size or is the provided buffer
   * big enough?
   */
  if ( ( lpData == NULL ) ||
       ( *lpdwDataSize < dwRequiredDataSize )
     )
  {
    FUNC4();

    *lpdwDataSize = FUNC5( lpDplData->lpConn );

    return DPERR_BUFFERTOOSMALL;
  }

  FUNC1( lpData, lpDplData->lpConn );

  FUNC4();

  /* They have gotten the information - signal the event if required */
  if( FUNC2( NULL, NULL, &hInformOnSettingRead, FALSE ) &&
      hInformOnSettingRead
    )
  {
    BOOL bSuccess;
    bSuccess = FUNC6( hInformOnSettingRead );
    FUNC7( "Signalling setting read event %p %s\n",
             hInformOnSettingRead, bSuccess ? "succeed" : "failed" );

    /* Close out handle */
    FUNC2( NULL, NULL, &hInformOnSettingRead, TRUE );
  }

  return DP_OK;
}