
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {scalar_t__ bKeyDown; } ;
struct TYPE_7__ {TYPE_1__ KeyEvent; } ;
struct TYPE_8__ {scalar_t__ EventType; TYPE_2__ Event; } ;
typedef TYPE_3__* PINPUT_RECORD ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 scalar_t__ GetStdHandle (int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ KEY_EVENT ;
 int ReadConsoleInput (scalar_t__,TYPE_3__*,int,int *) ;
 int STD_INPUT_HANDLE ;
 scalar_t__ TRUE ;
 int WARN (char*) ;

VOID ConInKey(PINPUT_RECORD lpBuffer)
{
    HANDLE hInput = GetStdHandle(STD_INPUT_HANDLE);
    DWORD dwRead;

    if (hInput == INVALID_HANDLE_VALUE)
        WARN ("Invalid input handle!!!\n");

    do
    {
        ReadConsoleInput(hInput, lpBuffer, 1, &dwRead);
        if (lpBuffer->EventType == KEY_EVENT &&
            lpBuffer->Event.KeyEvent.bKeyDown)
        {
            break;
        }
    }
    while (TRUE);
}
