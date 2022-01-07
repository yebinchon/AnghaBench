
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {scalar_t__ pszText; int lParam; int iImage; int cchTextMax; int dwStateMask; int dwState; int mask; } ;
typedef TYPE_1__ TCITEMW ;
typedef int LPSTR ;
typedef scalar_t__ BOOL ;


 int TRACE (char*,int ,int ,int ,int ,...) ;
 scalar_t__ TRACE_ON (int ) ;
 int debugstr_a (int ) ;
 int debugstr_w (scalar_t__) ;
 int tab ;

__attribute__((used)) static void
TAB_DumpItemExternalT(const TCITEMW *pti, UINT iItem, BOOL isW)
{
    if (TRACE_ON(tab)) {
 TRACE("external tab %d, mask=0x%08x, dwState=0x%08x, dwStateMask=0x%08x, cchTextMax=0x%08x\n",
       iItem, pti->mask, pti->dwState, pti->dwStateMask, pti->cchTextMax);
 TRACE("external tab %d,   iImage=%d, lParam=0x%08lx, pszTextW=%s\n",
       iItem, pti->iImage, pti->lParam, isW ? debugstr_w(pti->pszText) : debugstr_a((LPSTR)pti->pszText));
    }
}
