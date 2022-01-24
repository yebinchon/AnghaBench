#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_4__ {scalar_t__ dwAppID; } ;
typedef  TYPE_1__* LPDPLAYX_LOBBYDATA ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* lobbyData ; 
 size_t numSupportedLobbies ; 

__attribute__((used)) static BOOL FUNC2( DWORD dwAppID, LPDPLAYX_LOBBYDATA* lplpDplData )
{
  UINT i;

  *lplpDplData = NULL;

  if( dwAppID == 0 )
  {
    dwAppID = FUNC0();
    FUNC1( "Translated dwAppID == 0 into 0x%08x\n", dwAppID );
  }

  for( i=0; i < numSupportedLobbies; i++ )
  {
    if( lobbyData[ i ].dwAppID == dwAppID )
    {
      /* This process is lobbied */
      FUNC1( "Found 0x%08x @ %u\n", dwAppID, i );
      *lplpDplData = &lobbyData[ i ];
      return TRUE;
    }
  }

  return FALSE;
}