#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * hSettingRead; int /*<<< orphan*/ * hDeath; int /*<<< orphan*/ * hStart; int /*<<< orphan*/  hNotifyEvent; } ;
typedef  TYPE_1__* LPMSGTHREADINFO ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DPL_MSG_ThreadMain ; 
 int /*<<< orphan*/  DUPLICATE_SAME_ACCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

DWORD FUNC8( HANDLE hNotifyEvent, HANDLE hStart,
                                         HANDLE hDeath, HANDLE hConnRead )
{
  DWORD           dwMsgThreadId;
  LPMSGTHREADINFO lpThreadInfo;
  HANDLE          hThread;

  lpThreadInfo = FUNC6( FUNC5(), 0, sizeof( *lpThreadInfo ) );
  if( lpThreadInfo == NULL )
  {
    return 0;
  }

  /* The notify event may or may not exist. Depends if async comm or not */
  if( hNotifyEvent &&
      !FUNC2( FUNC4(), hNotifyEvent,
                        FUNC4(), &lpThreadInfo->hNotifyEvent,
                        0, FALSE, DUPLICATE_SAME_ACCESS ) )
  {
    FUNC3( "Unable to duplicate event handle\n" );
    goto error;
  }

  /* These 3 handles don't need to be duplicated because we don't keep a
   * reference to them where they're created. They're created specifically
   * for the message thread
   */
  lpThreadInfo->hStart       = hStart;
  lpThreadInfo->hDeath       = hDeath;
  lpThreadInfo->hSettingRead = hConnRead;

  hThread = FUNC1( NULL,                  /* Security attribs */
                          0,                     /* Stack */
                          DPL_MSG_ThreadMain,    /* Msg reception function */
                          lpThreadInfo,          /* Msg reception func parameter */
                          0,                     /* Flags */
                          &dwMsgThreadId         /* Updated with thread id */
                        );
  if ( hThread == NULL )
  {
    FUNC3( "Unable to create msg thread\n" );
    goto error;
  }

  FUNC0(hThread);

  return dwMsgThreadId;

error:

  FUNC7( FUNC5(), 0, lpThreadInfo );

  return 0;
}