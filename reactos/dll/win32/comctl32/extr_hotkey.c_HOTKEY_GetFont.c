
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hFont; } ;
typedef int LRESULT ;
typedef TYPE_1__ HOTKEY_INFO ;



__attribute__((used)) static inline LRESULT
HOTKEY_GetFont (const HOTKEY_INFO *infoPtr)
{
    return (LRESULT)infoPtr->hFont;
}
