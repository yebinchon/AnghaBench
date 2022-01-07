
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_2__ {scalar_t__ dwAppID; scalar_t__ bWaitForConnectionSettings; } ;
typedef int BOOL ;


 int DPLAYX_AcquireSemaphore () ;
 int DPLAYX_ReleaseSemaphore () ;
 int FALSE ;
 int TRUE ;
 TYPE_1__* lobbyData ;
 size_t numSupportedLobbies ;

BOOL DPLAYX_AnyLobbiesWaitingForConnSettings(void)
{
  UINT i;
  BOOL bFound = FALSE;

  DPLAYX_AcquireSemaphore();

  for( i=0; i < numSupportedLobbies; i++ )
  {
    if( ( lobbyData[ i ].dwAppID != 0 ) &&
        ( lobbyData[ i ].bWaitForConnectionSettings )
      )
    {
      bFound = TRUE;
      break;
    }
  }

  DPLAYX_ReleaseSemaphore();

  return bFound;
}
