
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dll_version {void* revision; void* build; void* minor; void* major; int member_0; } ;
struct TYPE_2__ {int dwFileVersionLS; int dwFileVersionMS; } ;
typedef TYPE_1__ VS_FIXEDFILEINFO ;
typedef int UINT ;
typedef int HRSRC ;
typedef int HMODULE ;
typedef int HGLOBAL ;
typedef int DWORD ;


 int FindResourceW (int ,int ,int ) ;
 void* HIWORD (int ) ;
 void* LOWORD (int ) ;
 int LoadResource (int ,int ) ;
 void* LockResource (int ) ;
 int MAKEINTRESOURCEW (int ) ;
 int SizeofResource (int ,int ) ;
 int VS_FILE_INFO ;
 int VS_VERSION_INFO ;
 int VerQueryValueW (void*,char*,void**,int*) ;
 int talloc_free (void*) ;
 void* talloc_memdup (void*,void*,int ) ;
 void* talloc_new (int *) ;

__attribute__((used)) static struct dll_version get_dll_version(HMODULE dll)
{
    void *ctx = talloc_new(((void*)0));
    struct dll_version ret = { 0 };

    HRSRC rsrc = FindResourceW(dll, MAKEINTRESOURCEW(VS_VERSION_INFO),
                               MAKEINTRESOURCEW(VS_FILE_INFO));
    if (!rsrc)
        goto done;
    DWORD size = SizeofResource(dll, rsrc);
    HGLOBAL res = LoadResource(dll, rsrc);
    if (!res)
        goto done;
    void *ptr = LockResource(res);
    if (!ptr)
        goto done;
    void *copy = talloc_memdup(ctx, ptr, size);

    VS_FIXEDFILEINFO *ffi;
    UINT ffi_len;
    if (!VerQueryValueW(copy, L"\\", (void**)&ffi, &ffi_len))
        goto done;
    if (ffi_len < sizeof(*ffi))
        goto done;

    ret.major = HIWORD(ffi->dwFileVersionMS);
    ret.minor = LOWORD(ffi->dwFileVersionMS);
    ret.build = HIWORD(ffi->dwFileVersionLS);
    ret.revision = LOWORD(ffi->dwFileVersionLS);

done:
    talloc_free(ctx);
    return ret;
}
