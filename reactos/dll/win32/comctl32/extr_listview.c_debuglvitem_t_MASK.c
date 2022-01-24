#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int iItem; int iSubItem; int mask; int state; int stateMask; int cchTextMax; int iImage; int lParam; int iIndent; int /*<<< orphan*/  pszText; } ;
typedef  TYPE_1__ LVITEMW ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int DEBUG_BUFFER_SIZE ; 
 int LVIF_IMAGE ; 
 int LVIF_INDENT ; 
 int LVIF_PARAM ; 
 int LVIF_STATE ; 
 int LVIF_TEXT ; 
 char* FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char*,int,char*,...) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static const char* FUNC4(const LVITEMW *lpLVItem, BOOL isW)
{
    char* buf = FUNC0(), *text = buf;
    int len, size = DEBUG_BUFFER_SIZE;
    
    if (lpLVItem == NULL) return "(null)";
    len = FUNC2(buf, size, "{iItem=%d, iSubItem=%d, ", lpLVItem->iItem, lpLVItem->iSubItem);
    if (len == -1) goto end;
    buf += len; size -= len;
    if (lpLVItem->mask & LVIF_STATE)
	len = FUNC2(buf, size, "state=%x, stateMask=%x, ", lpLVItem->state, lpLVItem->stateMask);
    else len = 0;
    if (len == -1) goto end;
    buf += len; size -= len;
    if (lpLVItem->mask & LVIF_TEXT)
	len = FUNC2(buf, size, "pszText=%s, cchTextMax=%d, ", FUNC1(lpLVItem->pszText, isW, 80), lpLVItem->cchTextMax);
    else len = 0;
    if (len == -1) goto end;
    buf += len; size -= len;
    if (lpLVItem->mask & LVIF_IMAGE)
	len = FUNC2(buf, size, "iImage=%d, ", lpLVItem->iImage);
    else len = 0;
    if (len == -1) goto end;
    buf += len; size -= len;
    if (lpLVItem->mask & LVIF_PARAM)
	len = FUNC2(buf, size, "lParam=%lx, ", lpLVItem->lParam);
    else len = 0;
    if (len == -1) goto end;
    buf += len; size -= len;
    if (lpLVItem->mask & LVIF_INDENT)
	len = FUNC2(buf, size, "iIndent=%d, ", lpLVItem->iIndent);
    else len = 0;
    if (len == -1) goto end;
    buf += len;
    goto undo;
end:
    buf = text + FUNC3(text);
undo:
    if (buf - text > 2) { buf[-2] = '}'; buf[-1] = 0; }
    return text;
}