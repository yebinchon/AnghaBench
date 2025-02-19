
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ AsciiChar; } ;
struct TYPE_12__ {int wRepeatCount; TYPE_1__ uChar; int dwControlKeyState; scalar_t__ bKeyDown; scalar_t__ wVirtualKeyCode; scalar_t__ wVirtualScanCode; } ;
struct TYPE_11__ {int Flags; scalar_t__ MakeCode; } ;
typedef TYPE_2__* PKEYBOARD_INPUT_DATA ;
typedef int NTSTATUS ;
typedef TYPE_3__ KEY_EVENT_RECORD ;
typedef int HANDLE ;
typedef int DWORD ;


 int DPRINT (char*,scalar_t__) ;
 int ENHANCED_KEY ;
 scalar_t__ FALSE ;
 scalar_t__ IntAsciiFromInput (TYPE_2__*,int ) ;
 int IntUpdateControlKeyState (int ,int *,TYPE_2__*) ;
 scalar_t__ IntVKFromKbdInput (TYPE_2__*,int ) ;
 int KEY_BREAK ;
 int KEY_E0 ;
 int RtlZeroMemory (TYPE_3__*,int) ;
 int STATUS_SUCCESS ;
 scalar_t__ TRUE ;

NTSTATUS
IntTranslateKey(HANDLE hConsoleInput, PKEYBOARD_INPUT_DATA InputData, KEY_EVENT_RECORD *Event)
{
 static DWORD dwControlKeyState;

 RtlZeroMemory(Event, sizeof(KEY_EVENT_RECORD));

 if (!(InputData->Flags & KEY_BREAK))
  Event->bKeyDown = TRUE;
 else
  Event->bKeyDown = FALSE;

 Event->wRepeatCount = 1;
 Event->wVirtualScanCode = InputData->MakeCode;

 DPRINT("Translating: %x\n", InputData->MakeCode);

 IntUpdateControlKeyState(hConsoleInput, &dwControlKeyState, InputData);
 Event->dwControlKeyState = dwControlKeyState;

 if (InputData->Flags & KEY_E0)
  Event->dwControlKeyState |= ENHANCED_KEY;

 Event->wVirtualKeyCode = IntVKFromKbdInput(InputData,
                                            Event->dwControlKeyState);

 DPRINT("Result: %x\n", Event->wVirtualKeyCode);

 if (Event->bKeyDown) {
  Event->uChar.AsciiChar =
                     IntAsciiFromInput(InputData,
                                       Event->dwControlKeyState);
  DPRINT("Char: %x\n", Event->uChar.AsciiChar);
 } else {
  Event->uChar.AsciiChar = 0;
 }

 return STATUS_SUCCESS;
}
