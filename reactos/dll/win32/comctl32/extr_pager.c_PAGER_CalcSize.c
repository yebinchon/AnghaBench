
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int idFrom; int code; int hwndFrom; } ;
struct TYPE_8__ {int iHeight; int iWidth; TYPE_1__ hdr; int dwFlag; } ;
struct TYPE_7__ {int dwStyle; int hwndSelf; int nHeight; int nWidth; int hwndNotify; } ;
typedef TYPE_2__ PAGER_INFO ;
typedef TYPE_3__ NMPGCALCSIZE ;
typedef int LPARAM ;


 int GWLP_ID ;
 int GetWindowLongPtrW (int ,int ) ;
 int PGF_CALCHEIGHT ;
 int PGF_CALCWIDTH ;
 int PGN_CALCSIZE ;
 int PGS_HORZ ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*,int ,int ,int ) ;
 int WM_NOTIFY ;
 int ZeroMemory (TYPE_3__*,int) ;

__attribute__((used)) static void
PAGER_CalcSize( PAGER_INFO *infoPtr )
{
    NMPGCALCSIZE nmpgcs;
    ZeroMemory (&nmpgcs, sizeof (NMPGCALCSIZE));
    nmpgcs.hdr.hwndFrom = infoPtr->hwndSelf;
    nmpgcs.hdr.idFrom = GetWindowLongPtrW (infoPtr->hwndSelf, GWLP_ID);
    nmpgcs.hdr.code = PGN_CALCSIZE;
    nmpgcs.dwFlag = (infoPtr->dwStyle & PGS_HORZ) ? PGF_CALCWIDTH : PGF_CALCHEIGHT;
    nmpgcs.iWidth = infoPtr->nWidth;
    nmpgcs.iHeight = infoPtr->nHeight;
    SendMessageW (infoPtr->hwndNotify, WM_NOTIFY, nmpgcs.hdr.idFrom, (LPARAM)&nmpgcs);

    if (infoPtr->dwStyle & PGS_HORZ)
        infoPtr->nWidth = nmpgcs.iWidth;
    else
        infoPtr->nHeight = nmpgcs.iHeight;

    TRACE("[%p] PGN_CALCSIZE returns %dx%d\n", infoPtr->hwndSelf, nmpgcs.iWidth, nmpgcs.iHeight );
}
