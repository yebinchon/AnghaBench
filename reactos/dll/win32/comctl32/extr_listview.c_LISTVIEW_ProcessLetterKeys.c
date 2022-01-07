
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef char WPARAM ;
typedef int WCHAR ;
struct TYPE_13__ {int flags; char* psz; } ;
struct TYPE_12__ {scalar_t__ nItemCount; scalar_t__ lastKeyPressTimestamp; int nSearchParamLength; char* szSearchParam; char charCode; int nFocusedItem; int dwStyle; } ;
struct TYPE_11__ {int iItem; int cchTextMax; int * pszText; scalar_t__ iSubItem; int mask; } ;
struct TYPE_10__ {int iStart; int hdr; TYPE_5__ lvfi; } ;
typedef TYPE_1__ NMLVFINDITEMW ;
typedef TYPE_2__ LVITEMW ;
typedef int LPNMHDR ;
typedef int LPARAM ;
typedef TYPE_3__ LISTVIEW_INFO ;
typedef scalar_t__ INT ;
typedef scalar_t__ DWORD ;


 int FALSE ;
 scalar_t__ GetTickCount () ;
 scalar_t__ KEY_DELAY ;
 int LISTVIEW_GetItemW (TYPE_3__*,TYPE_2__*) ;
 int LISTVIEW_KeySelection (TYPE_3__*,scalar_t__,int ) ;
 int LVFI_PARTIAL ;
 int LVFI_WRAP ;
 int LVIF_TEXT ;
 int LVN_ODFINDITEMW ;
 int LVS_OWNERDATA ;
 int MAX_PATH ;
 int iswalnum (char) ;
 int lstrncmpiW (int *,char*,int) ;
 int memset (TYPE_5__*,int ,int) ;
 scalar_t__ notify_hdr (TYPE_3__*,int ,int ) ;

__attribute__((used)) static INT LISTVIEW_ProcessLetterKeys(LISTVIEW_INFO *infoPtr, WPARAM charCode, LPARAM keyData)
{
    WCHAR buffer[MAX_PATH];
    DWORD prevTime;
    LVITEMW item;
    int startidx;
    INT nItem;
    INT diff;


    if (!charCode || !keyData || infoPtr->nItemCount == 0) return 0;


    if (!iswalnum(charCode) &&
        charCode != '.' && charCode != '`' && charCode != '!' &&
        charCode != '@' && charCode != '#' && charCode != '$' &&
        charCode != '%' && charCode != '^' && charCode != '&' &&
        charCode != '*' && charCode != '(' && charCode != ')' &&
        charCode != '-' && charCode != '_' && charCode != '+' &&
        charCode != '=' && charCode != '\\'&& charCode != ']' &&
        charCode != '}' && charCode != '[' && charCode != '{' &&
        charCode != '/' && charCode != '?' && charCode != '>' &&
        charCode != '<' && charCode != ',' && charCode != '~')
        return 0;


    prevTime = infoPtr->lastKeyPressTimestamp;
    infoPtr->lastKeyPressTimestamp = GetTickCount();
    diff = infoPtr->lastKeyPressTimestamp - prevTime;

    if (diff >= 0 && diff < KEY_DELAY)
    {
        if (infoPtr->nSearchParamLength < MAX_PATH - 1)
            infoPtr->szSearchParam[infoPtr->nSearchParamLength++] = charCode;

        if (infoPtr->charCode != charCode)
            infoPtr->charCode = charCode = 0;
    }
    else
    {
        infoPtr->charCode = charCode;
        infoPtr->szSearchParam[0] = charCode;
        infoPtr->nSearchParamLength = 1;
    }




    if (infoPtr->nFocusedItem >= 0 && infoPtr->nItemCount > 1)
    {


        startidx = infoPtr->nSearchParamLength > 1 ? infoPtr->nFocusedItem : infoPtr->nFocusedItem + 1;
        if (startidx == infoPtr->nItemCount) startidx = 0;
    }
    else
        startidx = 0;


    if (infoPtr->dwStyle & LVS_OWNERDATA)
    {
        NMLVFINDITEMW nmlv;

        memset(&nmlv.lvfi, 0, sizeof(nmlv.lvfi));
        nmlv.lvfi.flags = (LVFI_WRAP | LVFI_PARTIAL);
        nmlv.lvfi.psz = infoPtr->szSearchParam;
        nmlv.iStart = startidx;

        infoPtr->szSearchParam[infoPtr->nSearchParamLength] = 0;

        nItem = notify_hdr(infoPtr, LVN_ODFINDITEMW, (LPNMHDR)&nmlv.hdr);
    }
    else
    {
        int i = startidx, endidx;


        nItem = -1;
        endidx = infoPtr->nItemCount;


        while (1)
        {

            if (i == infoPtr->nItemCount && startidx > 0)
            {
                endidx = startidx;
                startidx = 0;
            }

            for (i = startidx; i < endidx; i++)
            {

                item.mask = LVIF_TEXT;
                item.iItem = i;
                item.iSubItem = 0;
                item.pszText = buffer;
                item.cchTextMax = MAX_PATH;
                if (!LISTVIEW_GetItemW(infoPtr, &item)) return 0;

                if (!lstrncmpiW(item.pszText, infoPtr->szSearchParam, infoPtr->nSearchParamLength))
                {
                    nItem = i;
                    break;
                }



                else if (nItem == -1 && infoPtr->nSearchParamLength == 1 && !lstrncmpiW(item.pszText, infoPtr->szSearchParam, 1))
                {

                    nItem = i;
                }
            }

            if ( nItem != -1 ||
                 endidx != infoPtr->nItemCount ||
                (startidx == 0 && endidx == infoPtr->nItemCount) )
                break;
        };
    }

    if (nItem != -1)
        LISTVIEW_KeySelection(infoPtr, nItem, FALSE);

    return 0;
}
