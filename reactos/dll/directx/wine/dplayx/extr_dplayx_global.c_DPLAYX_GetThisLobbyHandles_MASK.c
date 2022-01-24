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
struct TYPE_3__ {scalar_t__ hInformOnAppStart; scalar_t__ hInformOnAppDeath; scalar_t__ hInformOnSettingRead; } ;
typedef  scalar_t__* LPHANDLE ;
typedef  TYPE_1__* LPDPLAYX_LOBBYDATA ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 

__attribute__((used)) static BOOL FUNC4( LPHANDLE lphStart,
                                        LPHANDLE lphDeath,
                                        LPHANDLE lphConnRead,
                                        BOOL     bClearSetHandles )
{
  LPDPLAYX_LOBBYDATA lpLData;

  FUNC1();

  if( !FUNC2( 0, &lpLData ) )
  {
    FUNC3();
    return FALSE;
  }

  if( lphStart != NULL )
  {
    if( lpLData->hInformOnAppStart == 0 )
    {
      FUNC3();
      return FALSE;
    }

    *lphStart = lpLData->hInformOnAppStart;

    if( bClearSetHandles )
    {
      FUNC0( lpLData->hInformOnAppStart );
      lpLData->hInformOnAppStart = 0;
    }
  }

  if( lphDeath != NULL )
  {
    if( lpLData->hInformOnAppDeath == 0 )
    {
      FUNC3();
      return FALSE;
    }

    *lphDeath = lpLData->hInformOnAppDeath;

    if( bClearSetHandles )
    {
      FUNC0( lpLData->hInformOnAppDeath );
      lpLData->hInformOnAppDeath = 0;
    }
  }

  if( lphConnRead != NULL )
  {
    if( lpLData->hInformOnSettingRead == 0 )
    {
      FUNC3();
      return FALSE;
    }

    *lphConnRead = lpLData->hInformOnSettingRead;

    if( bClearSetHandles )
    {
      FUNC0( lpLData->hInformOnSettingRead );
      lpLData->hInformOnSettingRead = 0;
    }
  }

  FUNC3();

  return TRUE;
}