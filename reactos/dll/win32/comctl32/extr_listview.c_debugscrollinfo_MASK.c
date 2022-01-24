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
struct TYPE_3__ {int cbSize; int fMask; int nMin; int nMax; int nPage; int nPos; int nTrackPos; } ;
typedef  TYPE_1__ SCROLLINFO ;

/* Variables and functions */
 int DEBUG_BUFFER_SIZE ; 
 int SIF_PAGE ; 
 int SIF_POS ; 
 int SIF_RANGE ; 
 int SIF_TRACKPOS ; 
 char* FUNC0 () ; 
 int FUNC1 (char*,int,char*,int,...) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static const char* FUNC3(const SCROLLINFO *pScrollInfo)
{
    char* buf = FUNC0(), *text = buf;
    int len, size = DEBUG_BUFFER_SIZE;

    if (pScrollInfo == NULL) return "(null)";
    len = FUNC1(buf, size, "{cbSize=%u, ", pScrollInfo->cbSize);
    if (len == -1) goto end;
    buf += len; size -= len;
    if (pScrollInfo->fMask & SIF_RANGE)
	len = FUNC1(buf, size, "nMin=%d, nMax=%d, ", pScrollInfo->nMin, pScrollInfo->nMax);
    else len = 0;
    if (len == -1) goto end;
    buf += len; size -= len;
    if (pScrollInfo->fMask & SIF_PAGE)
	len = FUNC1(buf, size, "nPage=%u, ", pScrollInfo->nPage);
    else len = 0;
    if (len == -1) goto end;
    buf += len; size -= len;
    if (pScrollInfo->fMask & SIF_POS)
	len = FUNC1(buf, size, "nPos=%d, ", pScrollInfo->nPos);
    else len = 0;
    if (len == -1) goto end;
    buf += len; size -= len;
    if (pScrollInfo->fMask & SIF_TRACKPOS)
	len = FUNC1(buf, size, "nTrackPos=%d, ", pScrollInfo->nTrackPos);
    else len = 0;
    if (len == -1) goto end;
    buf += len;
    goto undo;
end:
    buf = text + FUNC2(text);
undo:
    if (buf - text > 2) { buf[-2] = '}'; buf[-1] = 0; }
    return text;
}