#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
typedef  int /*<<< orphan*/ **** WCHAR ;
struct TYPE_7__ {int stringsz; int /*<<< orphan*/  blobsz; TYPE_1__* tables; } ;
struct TYPE_6__ {int offset; int rows; } ;
typedef  int /*<<< orphan*/ ******* LPWSTR ;
typedef  int LONG ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  TYPE_2__ ASSEMBLY ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ ******* FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ ******** FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ******) ; 
 int /*<<< orphan*/  mdtFile ; 

HRESULT FUNC5(ASSEMBLY *assembly, LPWSTR **files, DWORD *count)
{
    LONG offset;
    INT i, num_rows;
    WCHAR **ret;
    BYTE *ptr;
    DWORD idx;

    *count = 0;

    offset = assembly->tables[FUNC0(mdtFile)].offset;
    if (offset == -1)
        return S_OK;

    ptr = FUNC1(assembly, offset);
    if (!ptr)
        return S_OK;

    num_rows = assembly->tables[FUNC0(mdtFile)].rows;
    if (num_rows <= 0)
        return S_OK;

    if (!(ret = FUNC3(num_rows * sizeof(WCHAR *)))) return E_OUTOFMEMORY;

    for (i = 0; i < num_rows; i++)
    {
        ptr += sizeof(DWORD); /* skip Flags field */
        if (assembly->stringsz == sizeof(DWORD))
            idx = *(DWORD *)ptr;
        else
            idx = *(WORD *)ptr;

        ret[i] = FUNC2(assembly, idx);
        if (!ret[i])
        {
            for (; i >= 0; i--) FUNC4(&ret[i]);
            FUNC4(ret);
            return E_OUTOFMEMORY;
        }
        ptr += assembly->stringsz; /* skip Name field */
        ptr += assembly->blobsz; /* skip Hash field */
    }
    *count = num_rows;
    *files = ret;
    return S_OK;
}