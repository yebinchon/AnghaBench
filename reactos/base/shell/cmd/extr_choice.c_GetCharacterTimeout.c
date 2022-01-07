
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int AsciiChar; int UnicodeChar; } ;
struct TYPE_7__ {scalar_t__ bKeyDown; TYPE_1__ uChar; } ;
struct TYPE_8__ {TYPE_2__ KeyEvent; } ;
struct TYPE_9__ {scalar_t__ EventType; TYPE_3__ Event; } ;
typedef int * LPTCH ;
typedef int INT ;
typedef TYPE_4__ INPUT_RECORD ;
typedef int HANDLE ;
typedef int DWORD ;


 scalar_t__ FALSE ;
 int GC_KEYREAD ;
 int GC_NOKEY ;
 int GC_TIMEOUT ;
 int GetStdHandle (int ) ;
 scalar_t__ KEY_EVENT ;
 int ReadConsoleInput (int ,TYPE_4__*,int,int *) ;
 int STD_INPUT_HANDLE ;
 scalar_t__ WAIT_TIMEOUT ;
 scalar_t__ WaitForSingleObject (int ,int ) ;

__attribute__((used)) static INT
GetCharacterTimeout (LPTCH ch, DWORD dwMilliseconds)
{
    HANDLE hInput;
    DWORD dwRead;

    INPUT_RECORD lpBuffer;

    hInput = GetStdHandle (STD_INPUT_HANDLE);


    if (WaitForSingleObject (hInput, dwMilliseconds) == WAIT_TIMEOUT)
        return GC_TIMEOUT;


    ReadConsoleInput (hInput, &lpBuffer, 1, &dwRead);


    if ((lpBuffer.EventType == KEY_EVENT) &&
        (lpBuffer.Event.KeyEvent.bKeyDown != FALSE))
    {




        *ch = lpBuffer.Event.KeyEvent.uChar.AsciiChar;

        return GC_KEYREAD;
    }


    return GC_NOKEY;
}
