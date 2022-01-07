
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mask; int iSubItem; int fmt; int cx; int cchTextMax; int iImage; int iOrder; int pszText; } ;
typedef TYPE_1__ LVCOLUMNW ;
typedef int BOOL ;


 int DEBUG_BUFFER_SIZE ;
 int LVCF_FMT ;
 int LVCF_IMAGE ;
 int LVCF_ORDER ;
 int LVCF_SUBITEM ;
 int LVCF_TEXT ;
 int LVCF_WIDTH ;
 char* debug_getbuf () ;
 char* debugtext_tn (int ,int ,int) ;
 int snprintf (char*,int,char*,...) ;
 int strlen (char*) ;

__attribute__((used)) static const char* debuglvcolumn_t(const LVCOLUMNW *lpColumn, BOOL isW)
{
    char* buf = debug_getbuf(), *text = buf;
    int len, size = DEBUG_BUFFER_SIZE;

    if (lpColumn == ((void*)0)) return "(null)";
    len = snprintf(buf, size, "{");
    if (len == -1) goto end;
    buf += len; size -= len;
    if (lpColumn->mask & LVCF_SUBITEM)
 len = snprintf(buf, size, "iSubItem=%d, ", lpColumn->iSubItem);
    else len = 0;
    if (len == -1) goto end;
    buf += len; size -= len;
    if (lpColumn->mask & LVCF_FMT)
 len = snprintf(buf, size, "fmt=%x, ", lpColumn->fmt);
    else len = 0;
    if (len == -1) goto end;
    buf += len; size -= len;
    if (lpColumn->mask & LVCF_WIDTH)
 len = snprintf(buf, size, "cx=%d, ", lpColumn->cx);
    else len = 0;
    if (len == -1) goto end;
    buf += len; size -= len;
    if (lpColumn->mask & LVCF_TEXT)
 len = snprintf(buf, size, "pszText=%s, cchTextMax=%d, ", debugtext_tn(lpColumn->pszText, isW, 80), lpColumn->cchTextMax);
    else len = 0;
    if (len == -1) goto end;
    buf += len; size -= len;
    if (lpColumn->mask & LVCF_IMAGE)
 len = snprintf(buf, size, "iImage=%d, ", lpColumn->iImage);
    else len = 0;
    if (len == -1) goto end;
    buf += len; size -= len;
    if (lpColumn->mask & LVCF_ORDER)
 len = snprintf(buf, size, "iOrder=%d, ", lpColumn->iOrder);
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
