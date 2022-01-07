
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * hSettingRead; int * hDeath; int * hStart; int hNotifyEvent; } ;
typedef TYPE_1__* LPMSGTHREADINFO ;
typedef int * HANDLE ;
typedef int DWORD ;


 int CloseHandle (int *) ;
 int * CreateThread (int *,int ,int ,TYPE_1__*,int ,int *) ;
 int DPL_MSG_ThreadMain ;
 int DUPLICATE_SAME_ACCESS ;
 int DuplicateHandle (int ,int *,int ,int *,int ,int ,int ) ;
 int ERR (char*) ;
 int FALSE ;
 int GetCurrentProcess () ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;

DWORD CreateLobbyMessageReceptionThread( HANDLE hNotifyEvent, HANDLE hStart,
                                         HANDLE hDeath, HANDLE hConnRead )
{
  DWORD dwMsgThreadId;
  LPMSGTHREADINFO lpThreadInfo;
  HANDLE hThread;

  lpThreadInfo = HeapAlloc( GetProcessHeap(), 0, sizeof( *lpThreadInfo ) );
  if( lpThreadInfo == ((void*)0) )
  {
    return 0;
  }


  if( hNotifyEvent &&
      !DuplicateHandle( GetCurrentProcess(), hNotifyEvent,
                        GetCurrentProcess(), &lpThreadInfo->hNotifyEvent,
                        0, FALSE, DUPLICATE_SAME_ACCESS ) )
  {
    ERR( "Unable to duplicate event handle\n" );
    goto error;
  }





  lpThreadInfo->hStart = hStart;
  lpThreadInfo->hDeath = hDeath;
  lpThreadInfo->hSettingRead = hConnRead;

  hThread = CreateThread( ((void*)0),
                          0,
                          DPL_MSG_ThreadMain,
                          lpThreadInfo,
                          0,
                          &dwMsgThreadId
                        );
  if ( hThread == ((void*)0) )
  {
    ERR( "Unable to create msg thread\n" );
    goto error;
  }

  CloseHandle(hThread);

  return dwMsgThreadId;

error:

  HeapFree( GetProcessHeap(), 0, lpThreadInfo );

  return 0;
}
