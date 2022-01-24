#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int CheckSum; } ;
struct TYPE_10__ {TYPE_1__ OptionalHeader; } ;
struct TYPE_8__ {int CheckSum; } ;
struct TYPE_9__ {TYPE_2__ OptionalHeader; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  TYPE_3__ IMAGE_NT_HEADERS64 ;
typedef  TYPE_4__ IMAGE_NT_HEADERS32 ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_BEGIN ; 
 int /*<<< orphan*/  FILE_MAP_READ ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int HDR_NT32 ; 
 int HDR_NT64 ; 
 int FUNC4 (int /*<<< orphan*/ ,int*,TYPE_4__*,TYPE_3__*) ; 
 int INVALID_SET_FILE_POINTER ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_READONLY ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void*,int,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC10(HANDLE handle)
{
    DWORD FileLength, count, HeaderSum, pe_offset, nt_hdr_size;
    IMAGE_NT_HEADERS32 nt_hdr32;
    IMAGE_NT_HEADERS64 nt_hdr64;
    LPVOID BaseAddress;
    HANDLE hMapping;
    DWORD *CheckSum;
    void *nt_hdr;
    int ret;
    BOOL r;

    FUNC7("handle %p\n", handle);

    ret = FUNC4(handle, &pe_offset, &nt_hdr32, &nt_hdr64);

    if (ret == HDR_NT32)
    {
        CheckSum = &nt_hdr32.OptionalHeader.CheckSum;

        nt_hdr = &nt_hdr32;
        nt_hdr_size = sizeof(IMAGE_NT_HEADERS32);
    }
    else if (ret == HDR_NT64)
    {
        CheckSum = &nt_hdr64.OptionalHeader.CheckSum;

        nt_hdr = &nt_hdr64;
        nt_hdr_size = sizeof(IMAGE_NT_HEADERS64);
    }
    else
        return FALSE;

    hMapping = FUNC2(handle, NULL, PAGE_READONLY, 0, 0, NULL);

    if (!hMapping)
        return FALSE;

    BaseAddress = FUNC5(hMapping, FILE_MAP_READ, 0, 0, 0);

    if (!BaseAddress)
    {
        FUNC1(hMapping);
        return FALSE;
    }

    FileLength = FUNC3(handle, NULL);

    *CheckSum = 0;
    FUNC0(BaseAddress, FileLength, &HeaderSum, CheckSum);

    FUNC8(BaseAddress);
    FUNC1(hMapping);

    if (*CheckSum)
    {
        /* write the header back again */
        count = FUNC6(handle, pe_offset, NULL, FILE_BEGIN);

        if (count == INVALID_SET_FILE_POINTER)
            return FALSE;

        count = 0;

        r = FUNC9(handle, nt_hdr, nt_hdr_size, &count, NULL);

        if (!r)
            return FALSE;

        if (count != nt_hdr_size)
            return FALSE;

        return TRUE;
    }

    return FALSE;
}