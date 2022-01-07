
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* WORD ;
struct TYPE_4__ {void* InvMod; void* InvComb; } ;
typedef TYPE_1__ HOTKEY_INFO ;


 int TRACE (char*,TYPE_1__*,void*,void*) ;

__attribute__((used)) static void
HOTKEY_SetRules(HOTKEY_INFO *infoPtr, WORD invComb, WORD invMod)
{
    infoPtr->InvComb = invComb;
    infoPtr->InvMod = invMod;
    TRACE("(infoPtr=%p) Invalid Modifers: 0x%x, If Invalid: 0x%x\n", infoPtr,
          infoPtr->InvComb, infoPtr->InvMod);
}
