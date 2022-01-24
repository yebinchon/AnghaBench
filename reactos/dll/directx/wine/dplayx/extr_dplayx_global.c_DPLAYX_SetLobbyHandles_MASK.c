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
struct TYPE_3__ {void* hInformOnSettingRead; void* hInformOnAppDeath; void* hInformOnAppStart; } ;
typedef  TYPE_1__* LPDPLAYX_LOBBYDATA ;
typedef  void* HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 

BOOL FUNC3( DWORD dwAppID,
                             HANDLE hStart, HANDLE hDeath, HANDLE hConnRead )
{
  LPDPLAYX_LOBBYDATA lpLData;

  /* Need to explicitly give lobby application. Can't set for yourself */
  if( dwAppID == 0 )
  {
    return FALSE;
  }

  FUNC0();

  if( !FUNC1( dwAppID, &lpLData ) )
  {
    FUNC2();
    return FALSE;
  }

  lpLData->hInformOnAppStart    = hStart;
  lpLData->hInformOnAppDeath    = hDeath;
  lpLData->hInformOnSettingRead = hConnRead;

  FUNC2();

  return TRUE;
}