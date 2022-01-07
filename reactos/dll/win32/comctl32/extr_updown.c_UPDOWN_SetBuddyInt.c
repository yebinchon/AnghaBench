
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int txt ;
typedef char WCHAR ;
struct TYPE_4__ {int Flags; int Base; int dwStyle; int Buddy; int CurVal; } ;
typedef TYPE_1__ UPDOWN_INFO ;
typedef int BOOL ;


 int ARRAY_SIZE (char*) ;
 int FALSE ;
 int FLAG_BUDDYINT ;
 int GetWindowTextW (int ,char*,int) ;
 scalar_t__ IsWindow (int ) ;
 scalar_t__ LB_ERR ;
 int LB_SETCURSEL ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int SetWindowTextW (int ,char*) ;
 int TRACE (char*,int ) ;
 int UDS_NOTHOUSANDS ;
 char UPDOWN_GetThousandSep () ;
 scalar_t__ UPDOWN_IsBuddyListbox (TYPE_1__ const*) ;
 scalar_t__ lstrcmpiW (char*,char*) ;
 int memcpy (char*,char*,int) ;
 int wsprintfW (char*,char const*,int ) ;

__attribute__((used)) static BOOL UPDOWN_SetBuddyInt (const UPDOWN_INFO *infoPtr)
{
    static const WCHAR fmt_hex[] = { '0', 'x', '%', '0', '4', 'X', 0 };
    static const WCHAR fmt_dec_oct[] = { '%', 'd', '\0' };
    const WCHAR *fmt;
    WCHAR txt[20], txt_old[20] = { 0 };
    int len;

    if (!((infoPtr->Flags & FLAG_BUDDYINT) && IsWindow(infoPtr->Buddy)))
        return FALSE;

    TRACE("set new value(%d) to buddy.\n", infoPtr->CurVal);


    if (UPDOWN_IsBuddyListbox(infoPtr)) {
        return SendMessageW(infoPtr->Buddy, LB_SETCURSEL, infoPtr->CurVal, 0) != LB_ERR;
    }


    fmt = (infoPtr->Base == 16) ? fmt_hex : fmt_dec_oct;
    len = wsprintfW(txt, fmt, infoPtr->CurVal);



    if ((infoPtr->Base == 10) && !(infoPtr->dwStyle & UDS_NOTHOUSANDS) && (len > 3)) {
        WCHAR tmp[ARRAY_SIZE(txt)], *src = tmp, *dst = txt;
        WCHAR sep = UPDOWN_GetThousandSep();
 int start = len % 3;

 memcpy(tmp, txt, sizeof(txt));
 if (start == 0) start = 3;
 dst += start;
 src += start;
        for (len=0; *src; len++) {
     if (len % 3 == 0) *dst++ = sep;
     *dst++ = *src++;
        }
        *dst = 0;
    }


    GetWindowTextW(infoPtr->Buddy, txt_old, ARRAY_SIZE(txt_old));
    if (lstrcmpiW(txt_old, txt) == 0) return FALSE;

    return SetWindowTextW(infoPtr->Buddy, txt);
}
