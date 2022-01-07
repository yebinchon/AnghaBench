
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int MakeCode; } ;
typedef TYPE_1__* PKEYBOARD_INPUT_DATA ;
typedef int DWORD ;


 int DPRINT (char*,int) ;
 int ENHANCED_KEY ;
 int* KeyTable ;
 int* KeyTableEnhanced ;
 int* KeyTableNumlock ;
 int NUMLOCK_ON ;

__attribute__((used)) static DWORD
IntVKFromKbdInput(PKEYBOARD_INPUT_DATA InputData, DWORD KeyState)
{
 if (!(KeyState & ENHANCED_KEY)) {
  if ((KeyState & NUMLOCK_ON) &&
      KeyTableNumlock[InputData->MakeCode & 0x7f]) {
   DPRINT("Numlock, using %x\n",
          InputData->MakeCode & 0x7f);
   return KeyTableNumlock[InputData->MakeCode & 0x7f];
  }
  DPRINT("Not enhanced, using %x\n", InputData->MakeCode & 0x7f);
  return KeyTable[InputData->MakeCode & 0x7f];
 }

 DPRINT("Enhanced, using %x\n", InputData->MakeCode & 0x7f);
 return KeyTableEnhanced[InputData->MakeCode & 0x7f];
}
