#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dll_version {void* revision; void* build; void* minor; void* major; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int /*<<< orphan*/  dwFileVersionLS; int /*<<< orphan*/  dwFileVersionMS; } ;
typedef  TYPE_1__ VS_FIXEDFILEINFO ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  HRSRC ;
typedef  int /*<<< orphan*/  HMODULE ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VS_FILE_INFO ; 
 int /*<<< orphan*/  VS_VERSION_INFO ; 
 int /*<<< orphan*/  FUNC7 (void*,char*,void**,int*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 (void*,void*,int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dll_version FUNC11(HMODULE dll)
{
    void *ctx = FUNC10(NULL);
    struct dll_version ret = { 0 };

    HRSRC rsrc = FUNC0(dll, FUNC5(VS_VERSION_INFO),
                               FUNC5(VS_FILE_INFO));
    if (!rsrc)
        goto done;
    DWORD size = FUNC6(dll, rsrc);
    HGLOBAL res = FUNC3(dll, rsrc);
    if (!res)
        goto done;
    void *ptr = FUNC4(res);
    if (!ptr)
        goto done;
    void *copy = FUNC9(ctx, ptr, size);

    VS_FIXEDFILEINFO *ffi;
    UINT ffi_len;
    if (!FUNC7(copy, L"\\", (void**)&ffi, &ffi_len))
        goto done;
    if (ffi_len < sizeof(*ffi))
        goto done;

    ret.major = FUNC1(ffi->dwFileVersionMS);
    ret.minor = FUNC2(ffi->dwFileVersionMS);
    ret.build = FUNC1(ffi->dwFileVersionLS);
    ret.revision = FUNC2(ffi->dwFileVersionLS);

done:
    FUNC8(ctx);
    return ret;
}