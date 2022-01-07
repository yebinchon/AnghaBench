
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_d3d11 {scalar_t__ D3DCompile; int d3d_compiler_ver; } ;
struct ra {struct ra_d3d11* priv; } ;
typedef scalar_t__ pD3DCompile ;
typedef int * HMODULE ;


 scalar_t__ GetProcAddress (int *,char*) ;
 scalar_t__ IsWindows8Point1OrGreater () ;
 int LOAD_LIBRARY_SEARCH_SYSTEM32 ;
 int * LoadLibraryExW (char*,int *,int ) ;
 int * LoadLibraryW (char*) ;
 int get_dll_version (int *) ;

__attribute__((used)) static bool load_d3d_compiler(struct ra *ra)
{
    struct ra_d3d11 *p = ra->priv;
    HMODULE d3dcompiler = ((void*)0);


    if (IsWindows8Point1OrGreater()) {
        d3dcompiler = LoadLibraryExW(L"d3dcompiler_47.dll", ((void*)0),
                                     LOAD_LIBRARY_SEARCH_SYSTEM32);
    }

    if (!d3dcompiler)
        d3dcompiler = LoadLibraryW(L"d3dcompiler_47.dll");

    if (!d3dcompiler)
        d3dcompiler = LoadLibraryW(L"d3dcompiler_46.dll");

    if (!d3dcompiler)
        d3dcompiler = LoadLibraryW(L"d3dcompiler_43.dll");

    if (!d3dcompiler)
        return 0;

    p->d3d_compiler_ver = get_dll_version(d3dcompiler);

    p->D3DCompile = (pD3DCompile)GetProcAddress(d3dcompiler, "D3DCompile");
    if (!p->D3DCompile)
        return 0;
    return 1;
}
