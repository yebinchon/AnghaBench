#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_5__ {int version; size_t wTOMapLen; int /*<<< orphan*/  lpszPath; int /*<<< orphan*/  Context; int /*<<< orphan*/ * TOMap; } ;
typedef  size_t LONG ;
typedef  int /*<<< orphan*/  HLPFILE_PAGE ;
typedef  TYPE_1__ HLPFILE ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  comp_PageByHash ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

HLPFILE_PAGE *FUNC8(HLPFILE* hlpfile, LONG lHash, ULONG* relative)
{
    BYTE *ptr;

    if (!hlpfile) return NULL;
    if (!lHash) return FUNC2(hlpfile, relative);

    FUNC6("<%s>[%x]\n", FUNC7(hlpfile->lpszPath), lHash);

    /* For win 3.0 files hash values are really page numbers */
    if (hlpfile->version <= 16)
    {
        if (lHash >= hlpfile->wTOMapLen) return NULL;
        return FUNC3(hlpfile, hlpfile->TOMap[lHash], relative);
    }

    ptr = FUNC1(hlpfile->Context, FUNC4(lHash), comp_PageByHash);
    if (!ptr)
    {
        FUNC5("Page of hash %x not found in file %s\n", lHash, FUNC7(hlpfile->lpszPath));
        return NULL;
    }

    return FUNC3(hlpfile, FUNC0(ptr, 4), relative);
}