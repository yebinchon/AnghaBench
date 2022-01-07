
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {int bound; scalar_t__ text; } ;
struct TYPE_4__ {scalar_t__ numParts; int Self; TYPE_2__* parts; } ;
typedef TYPE_1__ STATUS_INFO ;
typedef TYPE_2__ STATUSWINDOWPART ;
typedef int LPCWSTR ;
typedef scalar_t__ LPCSTR ;
typedef int BOOL ;


 scalar_t__ Alloc (int) ;
 int FALSE ;
 int Free (scalar_t__) ;
 int InvalidateRect (int ,int *,int ) ;
 int TRACE (char*) ;
 int TRUE ;
 int strcpyW (scalar_t__,int ) ;
 int strlenW (int ) ;

__attribute__((used)) static BOOL
STATUSBAR_WMSetText (const STATUS_INFO *infoPtr, LPCSTR text)
{
    STATUSWINDOWPART *part;
    int len;

    TRACE("\n");
    if (infoPtr->numParts == 0)
 return FALSE;

    part = &infoPtr->parts[0];

    Free (part->text);
    part->text = 0;

    if (text && (len = strlenW((LPCWSTR)text))) {
        part->text = Alloc ((len+1)*sizeof(WCHAR));
        if (!part->text) return FALSE;
        strcpyW (part->text, (LPCWSTR)text);
    }

    InvalidateRect(infoPtr->Self, &part->bound, FALSE);

    return TRUE;
}
