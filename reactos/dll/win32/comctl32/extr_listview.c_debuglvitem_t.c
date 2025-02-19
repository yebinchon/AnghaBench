
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iItem; int iSubItem; int mask; int state; int stateMask; int cchTextMax; int iImage; int lParam; int iIndent; int pszText; } ;
typedef TYPE_1__ LVITEMW ;
typedef int BOOL ;


 int DEBUG_BUFFER_SIZE ;
 int LVIF_IMAGE ;
 int LVIF_INDENT ;
 int LVIF_PARAM ;
 int LVIF_STATE ;
 int LVIF_TEXT ;
 char* debug_getbuf () ;
 char* debugtext_tn (int ,int ,int) ;
 int snprintf (char*,int,char*,...) ;
 int strlen (char*) ;

__attribute__((used)) static const char* debuglvitem_t(const LVITEMW *lpLVItem, BOOL isW)
{
    char* buf = debug_getbuf(), *text = buf;
    int len, size = DEBUG_BUFFER_SIZE;

    if (lpLVItem == ((void*)0)) return "(null)";
    len = snprintf(buf, size, "{iItem=%d, iSubItem=%d, ", lpLVItem->iItem, lpLVItem->iSubItem);
    if (len == -1) goto end;
    buf += len; size -= len;
    if (lpLVItem->mask & LVIF_STATE)
 len = snprintf(buf, size, "state=%x, stateMask=%x, ", lpLVItem->state, lpLVItem->stateMask);
    else len = 0;
    if (len == -1) goto end;
    buf += len; size -= len;
    if (lpLVItem->mask & LVIF_TEXT)
 len = snprintf(buf, size, "pszText=%s, cchTextMax=%d, ", debugtext_tn(lpLVItem->pszText, isW, 80), lpLVItem->cchTextMax);
    else len = 0;
    if (len == -1) goto end;
    buf += len; size -= len;
    if (lpLVItem->mask & LVIF_IMAGE)
 len = snprintf(buf, size, "iImage=%d, ", lpLVItem->iImage);
    else len = 0;
    if (len == -1) goto end;
    buf += len; size -= len;
    if (lpLVItem->mask & LVIF_PARAM)
 len = snprintf(buf, size, "lParam=%lx, ", lpLVItem->lParam);
    else len = 0;
    if (len == -1) goto end;
    buf += len; size -= len;
    if (lpLVItem->mask & LVIF_INDENT)
 len = snprintf(buf, size, "iIndent=%d, ", lpLVItem->iIndent);
    else len = 0;
    if (len == -1) goto end;
    buf += len;
    goto undo;
end:
    buf = text + strlen(text);
undo:
    if (buf - text > 2) { buf[-2] = '}'; buf[-1] = 0; }
    return text;
}
