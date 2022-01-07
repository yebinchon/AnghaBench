
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_2__ {scalar_t__ dwAppID; scalar_t__ hInformOnSettingRead; scalar_t__ hInformOnAppDeath; scalar_t__ hInformOnAppStart; int dwAppLaunchedFromID; } ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int DPLAYX_AcquireSemaphore () ;
 int DPLAYX_ReleaseSemaphore () ;
 int ERR (char*) ;
 int FALSE ;
 int GetCurrentProcessId () ;
 int TRACE (char*,size_t,scalar_t__,int ) ;
 int TRUE ;
 TYPE_1__* lobbyData ;
 size_t numSupportedLobbies ;

BOOL DPLAYX_CreateLobbyApplication( DWORD dwAppID )
{
  UINT i;


  if( dwAppID == 0 )
  {
    return FALSE;
  }

  DPLAYX_AcquireSemaphore();


  for( i=0; i < numSupportedLobbies; i++ )
  {
    if( lobbyData[ i ].dwAppID == 0 )
    {

      TRACE( "Setting lobbyData[%u] for (0x%08x,0x%08x)\n",
              i, dwAppID, GetCurrentProcessId() );

      lobbyData[ i ].dwAppID = dwAppID;
      lobbyData[ i ].dwAppLaunchedFromID = GetCurrentProcessId();


      lobbyData[ i ].hInformOnAppStart = 0;
      lobbyData[ i ].hInformOnAppDeath = 0;
      lobbyData[ i ].hInformOnSettingRead = 0;

      DPLAYX_ReleaseSemaphore();
      return TRUE;
    }
  }

  ERR( "No empty lobbies\n" );

  DPLAYX_ReleaseSemaphore();
  return FALSE;
}
