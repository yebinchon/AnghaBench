
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
typedef scalar_t__ LRESULT ;
typedef int * LPSTR ;
typedef size_t INT ;
typedef scalar_t__ DWORD ;


 int CP_ACP ;
 scalar_t__ MAKELONG (scalar_t__,int) ;
 int SBT_OWNERDRAW ;
 int TRACE (char*,size_t) ;
 int WideCharToMultiByte (int ,int ,scalar_t__,int,int *,scalar_t__,int *,int *) ;

__attribute__((used)) static LRESULT
STATUSBAR_GetTextA (STATUS_INFO *infoPtr, INT nPart, LPSTR buf)
{
    STATUSWINDOWPART *part;
    LRESULT result;

    TRACE("part %d\n", nPart);


    if (nPart < 0 || nPart >= infoPtr->numParts) return 0;

    if (infoPtr->simple)
 part = &infoPtr->part0;
    else
 part = &infoPtr->parts[nPart];

    if (part->style & SBT_OWNERDRAW)
 result = (LRESULT)part->text;
    else {
        DWORD len = part->text ? WideCharToMultiByte( CP_ACP, 0, part->text, -1,
                                                      ((void*)0), 0, ((void*)0), ((void*)0) ) - 1 : 0;
        result = MAKELONG( len, part->style );
        if (part->text && buf)
            WideCharToMultiByte( CP_ACP, 0, part->text, -1, buf, len+1, ((void*)0), ((void*)0) );
    }
    return result;
}
