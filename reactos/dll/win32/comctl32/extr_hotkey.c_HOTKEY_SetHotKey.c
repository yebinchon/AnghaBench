
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_4__ {int hwndSelf; int HotKey; int ScanCode; } ;
typedef TYPE_1__ HOTKEY_INFO ;


 int HIBYTE (int ) ;
 int InvalidateRect (int ,int *,int ) ;
 int LOBYTE (int ) ;
 int MAKELPARAM (int ,int ) ;
 int MapVirtualKeyW (int ,int ) ;
 int TRACE (char*,TYPE_1__*,int ,int ,int ) ;
 int TRUE ;

__attribute__((used)) static void
HOTKEY_SetHotKey(HOTKEY_INFO *infoPtr, WORD hotKey)
{
    infoPtr->HotKey = hotKey;
    infoPtr->ScanCode =
        MAKELPARAM(0, MapVirtualKeyW(LOBYTE(infoPtr->HotKey), 0));
    TRACE("(infoPtr=%p hotKey=%x) Modifiers: 0x%x, Virtual Key: %d\n", infoPtr,
          hotKey, HIBYTE(infoPtr->HotKey), LOBYTE(infoPtr->HotKey));
    InvalidateRect(infoPtr->hwndSelf, ((void*)0), TRUE);
}
