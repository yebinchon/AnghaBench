
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int HotKey; } ;
typedef int LRESULT ;
typedef TYPE_1__ HOTKEY_INFO ;


 int HIBYTE (int ) ;
 int LOBYTE (int ) ;
 int TRACE (char*,TYPE_1__ const*,int ,int ) ;

__attribute__((used)) static LRESULT
HOTKEY_GetHotKey(const HOTKEY_INFO *infoPtr)
{
    TRACE("(infoPtr=%p) Modifiers: 0x%x, Virtual Key: %d\n", infoPtr,
          HIBYTE(infoPtr->HotKey), LOBYTE(infoPtr->HotKey));
    return (LRESULT)infoPtr->HotKey;
}
