
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* UINT ;
struct TYPE_8__ {scalar_t__ hwndFrom; void* code; void* idFrom; } ;
struct TYPE_7__ {scalar_t__ hwndFrom; int hwndTo; int dwParam5; } ;
typedef TYPE_1__ NOTIFYDATA ;
typedef TYPE_2__ NMHDR ;
typedef int LRESULT ;
typedef TYPE_2__* LPNMHDR ;
typedef int LPARAM ;
typedef scalar_t__ HWND ;


 void* GetDlgCtrlID (scalar_t__) ;
 int SendMessageW (int ,int ,void*,int ) ;
 int TRACE (char*,scalar_t__,int ,void*,TYPE_2__*,int ) ;
 int WM_NOTIFY ;

__attribute__((used)) static LRESULT DoNotify (const NOTIFYDATA *lpNotify, UINT uCode, LPNMHDR lpHdr)
{
    NMHDR nmhdr;
    LPNMHDR lpNmh = ((void*)0);
    UINT idFrom = 0;

    TRACE("(%p %p %d %p 0x%08x)\n",
    lpNotify->hwndFrom, lpNotify->hwndTo, uCode, lpHdr,
    lpNotify->dwParam5);

    if (!lpNotify->hwndTo)
 return 0;

    if (lpNotify->hwndFrom == (HWND)-1) {
 lpNmh = lpHdr;
 idFrom = lpHdr->idFrom;
    }
    else {
 if (lpNotify->hwndFrom)
     idFrom = GetDlgCtrlID (lpNotify->hwndFrom);

 lpNmh = (lpHdr) ? lpHdr : &nmhdr;

 lpNmh->hwndFrom = lpNotify->hwndFrom;
 lpNmh->idFrom = idFrom;
 lpNmh->code = uCode;
    }

    return SendMessageW (lpNotify->hwndTo, WM_NOTIFY, idFrom, (LPARAM)lpNmh);
}
