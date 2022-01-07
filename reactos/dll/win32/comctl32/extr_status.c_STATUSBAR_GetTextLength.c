
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int style; scalar_t__ text; } ;
struct TYPE_4__ {size_t numParts; TYPE_2__* parts; TYPE_2__ part0; scalar_t__ simple; } ;
typedef TYPE_1__ STATUS_INFO ;
typedef TYPE_2__ STATUSWINDOWPART ;
typedef int LRESULT ;
typedef size_t INT ;
typedef int DWORD ;


 int SBT_OWNERDRAW ;
 int TRACE (char*,size_t) ;
 int strlenW (scalar_t__) ;

__attribute__((used)) static LRESULT
STATUSBAR_GetTextLength (STATUS_INFO *infoPtr, INT nPart)
{
    STATUSWINDOWPART *part;
    DWORD result;

    TRACE("part %d\n", nPart);


    if (nPart < 0 || nPart >= infoPtr->numParts) return 0;

    if (infoPtr->simple)
 part = &infoPtr->part0;
    else
 part = &infoPtr->parts[nPart];

    if ((~part->style & SBT_OWNERDRAW) && part->text)
 result = strlenW(part->text);
    else
 result = 0;

    result |= (part->style << 16);
    return result;
}
