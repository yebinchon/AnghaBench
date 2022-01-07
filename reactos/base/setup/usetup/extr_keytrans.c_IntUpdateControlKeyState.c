
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int kip ;
struct TYPE_6__ {int LedFlags; scalar_t__ UnitId; } ;
struct TYPE_5__ {int Flags; int MakeCode; } ;
typedef TYPE_1__* PKEYBOARD_INPUT_DATA ;
typedef int NTSTATUS ;
typedef int* LPDWORD ;
typedef TYPE_2__ KEYBOARD_INDICATOR_PARAMETERS ;
typedef int IO_STATUS_BLOCK ;
typedef int HANDLE ;
typedef int DWORD ;


 int CAPSLOCK_ON ;
 int DPRINT (char*,int ) ;
 int DPRINT1 (char*,int ) ;
 int IOCTL_KEYBOARD_SET_INDICATORS ;
 int KEYBOARD_CAPS_LOCK_ON ;
 int KEYBOARD_NUM_LOCK_ON ;
 int KEYBOARD_SCROLL_LOCK_ON ;
 int KEY_BREAK ;
 int KEY_E0 ;
 int KEY_E1 ;
 int LEFT_ALT_PRESSED ;
 int LEFT_CTRL_PRESSED ;
 int NT_SUCCESS (int ) ;
 int NUMLOCK_ON ;
 int NtDeviceIoControlFile (int ,int *,int *,int *,int *,int ,TYPE_2__*,int,int *,int ) ;
 int RIGHT_ALT_PRESSED ;
 int RIGHT_CTRL_PRESSED ;
 int SCROLLLOCK_ON ;
 int SHIFT_PRESSED ;

__attribute__((used)) static void
IntUpdateControlKeyState(HANDLE hConsoleInput, LPDWORD State, PKEYBOARD_INPUT_DATA InputData)
{
 DWORD Value = 0;
    DWORD oldState, newState;

 if (InputData->Flags & KEY_E1)
  return;

    oldState = newState = *State;

 if (!(InputData->Flags & KEY_E0)) {
  switch (InputData->MakeCode) {
   case 0x2a:
   case 0x36:
    Value = SHIFT_PRESSED;
    break;

   case 0x1d:
    Value = LEFT_CTRL_PRESSED;
    break;

   case 0x38:
    Value = LEFT_ALT_PRESSED;
    break;

   case 0x3A:
    if (!(InputData->Flags & KEY_BREAK))
     newState ^= CAPSLOCK_ON;
    break;

   case 0x45:
    if (!(InputData->Flags & KEY_BREAK))
     newState ^= NUMLOCK_ON;
    break;

   case 0x46:
    if (!(InputData->Flags & KEY_BREAK))
     newState ^= SCROLLLOCK_ON;
    break;

   default:
    return;
  }
 } else {
  switch (InputData->MakeCode) {
   case 0x1d:
    Value = RIGHT_CTRL_PRESSED;
    break;

   case 0x38:
    Value = RIGHT_ALT_PRESSED;
    break;

   default:
    return;
  }
 }


    if ((oldState ^ newState) & (NUMLOCK_ON | CAPSLOCK_ON | SCROLLLOCK_ON))
    {
        IO_STATUS_BLOCK IoStatusBlock;
        NTSTATUS Status;
        KEYBOARD_INDICATOR_PARAMETERS kip;

        kip.LedFlags = 0;
        kip.UnitId = 0;

        if ((newState & NUMLOCK_ON))
            kip.LedFlags |= KEYBOARD_NUM_LOCK_ON;

        if ((newState & CAPSLOCK_ON))
            kip.LedFlags |= KEYBOARD_CAPS_LOCK_ON;

        if ((newState & SCROLLLOCK_ON))
            kip.LedFlags |= KEYBOARD_SCROLL_LOCK_ON;


        DPRINT("NtDeviceIoControlFile dwLeds=%x\n", kip.LedFlags);

        Status = NtDeviceIoControlFile(
              hConsoleInput,
              ((void*)0),
              ((void*)0),
              ((void*)0),
              &IoStatusBlock,
              IOCTL_KEYBOARD_SET_INDICATORS,
        &kip,
              sizeof(kip),
        ((void*)0),
              0);

        if (!NT_SUCCESS(Status))
        {
            DPRINT1("NtDeviceIoControlFile(IOCTL_KEYBOARD_SET_INDICATORS) failed (Status %lx)\n", Status);
        }
    } else

 if (InputData->Flags & KEY_BREAK)
  newState &= ~Value;
 else
  newState |= Value;

    *State = newState;
}
