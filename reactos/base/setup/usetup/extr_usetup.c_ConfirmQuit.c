
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int AsciiChar; } ;
struct TYPE_9__ {scalar_t__ wVirtualKeyCode; TYPE_1__ uChar; } ;
struct TYPE_8__ {TYPE_3__ KeyEvent; } ;
struct TYPE_10__ {TYPE_2__ Event; } ;
typedef TYPE_4__* PINPUT_RECORD ;
typedef scalar_t__ BOOL ;


 int CONSOLE_ConInKey (TYPE_4__*) ;
 int ERROR_NOT_INSTALLED ;
 scalar_t__ FALSE ;
 int MUIDisplayError (int ,int *,int ) ;
 int POPUP_WAIT_NONE ;
 scalar_t__ TRUE ;
 scalar_t__ VK_F3 ;

__attribute__((used)) static BOOL
ConfirmQuit(PINPUT_RECORD Ir)
{
    BOOL Result = FALSE;
    MUIDisplayError(ERROR_NOT_INSTALLED, ((void*)0), POPUP_WAIT_NONE);

    while (TRUE)
    {
        CONSOLE_ConInKey(Ir);

        if ((Ir->Event.KeyEvent.uChar.AsciiChar == 0x00) &&
            (Ir->Event.KeyEvent.wVirtualKeyCode == VK_F3))
        {
            Result = TRUE;
            break;
        }
        else if (Ir->Event.KeyEvent.uChar.AsciiChar == 0x0D)
        {
            Result = FALSE;
            break;
        }
    }

    return Result;
}
