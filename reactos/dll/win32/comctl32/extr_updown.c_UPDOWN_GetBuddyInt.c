
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ WCHAR ;
struct TYPE_5__ {int Flags; int CurVal; int Base; int Buddy; } ;
typedef TYPE_1__ UPDOWN_INFO ;
typedef int BOOL ;


 int ARRAY_SIZE (scalar_t__*) ;
 int FALSE ;
 int FLAG_BUDDYINT ;
 scalar_t__ GetWindowTextW (int ,scalar_t__*,int ) ;
 scalar_t__ IsWindow (int ) ;
 int LB_GETCARETINDEX ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*,int,int) ;
 int TRUE ;
 scalar_t__ UPDOWN_GetThousandSep () ;
 int UPDOWN_InBounds (TYPE_1__*,int) ;
 scalar_t__ UPDOWN_IsBuddyListbox (TYPE_1__*) ;
 int strtolW (scalar_t__*,scalar_t__**,int ) ;

__attribute__((used)) static BOOL UPDOWN_GetBuddyInt (UPDOWN_INFO *infoPtr)
{
    WCHAR txt[20], sep, *src, *dst;
    int newVal;

    if (!((infoPtr->Flags & FLAG_BUDDYINT) && IsWindow(infoPtr->Buddy)))
        return FALSE;


    if (UPDOWN_IsBuddyListbox(infoPtr)) {
        newVal = SendMessageW(infoPtr->Buddy, LB_GETCARETINDEX, 0, 0);
        if(newVal < 0) return FALSE;
    } else {



        if (GetWindowTextW(infoPtr->Buddy, txt, ARRAY_SIZE(txt)) < 0)
            return FALSE;

        sep = UPDOWN_GetThousandSep();


        for(src = dst = txt; *src; src++)
            if(*src != sep) *dst++ = *src;
        *dst = 0;


        newVal = strtolW(txt, &src, infoPtr->Base);
        if(*src || !UPDOWN_InBounds (infoPtr, newVal)) return FALSE;
    }

    TRACE("new value(%d) from buddy (old=%d)\n", newVal, infoPtr->CurVal);
    infoPtr->CurVal = newVal;
    return TRUE;
}
