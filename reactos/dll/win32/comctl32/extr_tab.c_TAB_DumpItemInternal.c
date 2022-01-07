
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int top; int left; } ;
struct TYPE_5__ {TYPE_1__ rect; int iImage; int pszText; int dwState; } ;
typedef TYPE_2__ TAB_ITEM ;
typedef int TAB_INFO ;


 TYPE_2__* TAB_GetItem (int const*,int ) ;
 int TRACE (char*,int ,int ,int ,...) ;
 scalar_t__ TRACE_ON (int ) ;
 int debugstr_w (int ) ;
 int tab ;

__attribute__((used)) static void
TAB_DumpItemInternal(const TAB_INFO *infoPtr, UINT iItem)
{
    if (TRACE_ON(tab)) {
 TAB_ITEM *ti = TAB_GetItem(infoPtr, iItem);

 TRACE("tab %d, dwState=0x%08x, pszText=%s, iImage=%d\n",
       iItem, ti->dwState, debugstr_w(ti->pszText), ti->iImage);
 TRACE("tab %d, rect.left=%d, rect.top(row)=%d\n",
       iItem, ti->rect.left, ti->rect.top);
    }
}
