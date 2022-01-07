
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_10__ {int assemblies; } ;
struct TYPE_7__ {scalar_t__ wProcessorArchitecture; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
typedef TYPE_3__ SYSTEM_INFO ;
typedef int IAssemblyName ;
typedef TYPE_4__ IAssemblyEnumImpl ;
typedef int HRESULT ;
typedef int DWORD ;


 int ASM_CACHE_ROOT ;
 int ASM_CACHE_ROOT_EX ;
 scalar_t__ FAILED (int ) ;
 int GetCachePath (int ,char*,int*) ;
 int GetNativeSystemInfo (TYPE_3__*) ;
 int MAX_PATH ;
 scalar_t__ PROCESSOR_ARCHITECTURE_AMD64 ;
 int S_OK ;
 int enum_gac_assemblies (int *,int *,int ,char const*,char*) ;
 int lstrcpyW (char*,char const*) ;

__attribute__((used)) static HRESULT enumerate_gac(IAssemblyEnumImpl *asmenum, IAssemblyName *pName)
{
    static const WCHAR gac[] = {'\\','G','A','C',0};
    static const WCHAR gac_32[] = {'\\','G','A','C','_','3','2',0};
    static const WCHAR gac_64[] = {'\\','G','A','C','_','6','4',0};
    static const WCHAR gac_msil[] = {'\\','G','A','C','_','M','S','I','L',0};
    static const WCHAR v40[] = {'v','4','.','0','_',0};
    WCHAR path[MAX_PATH], buf[MAX_PATH];
    SYSTEM_INFO info;
    HRESULT hr;
    DWORD size;

    size = MAX_PATH;
    hr = GetCachePath(ASM_CACHE_ROOT_EX, buf, &size);
    if (FAILED(hr))
        return hr;

    lstrcpyW(path, buf);
    GetNativeSystemInfo(&info);
    if (info.u.s.wProcessorArchitecture == PROCESSOR_ARCHITECTURE_AMD64)
    {
        lstrcpyW(path + size - 1, gac_64);
        hr = enum_gac_assemblies(&asmenum->assemblies, pName, 0, v40, path);
        if (FAILED(hr))
            return hr;
    }
    lstrcpyW(path + size - 1, gac_32);
    hr = enum_gac_assemblies(&asmenum->assemblies, pName, 0, v40, path);
    if (FAILED(hr))
        return hr;

    lstrcpyW(path + size - 1, gac_msil);
    hr = enum_gac_assemblies(&asmenum->assemblies, pName, 0, v40, path);
    if (FAILED(hr))
        return hr;

    size = MAX_PATH;
    hr = GetCachePath(ASM_CACHE_ROOT, buf, &size);
    if (FAILED(hr))
        return hr;

    lstrcpyW(path, buf);
    if (info.u.s.wProcessorArchitecture == PROCESSOR_ARCHITECTURE_AMD64)
    {
        lstrcpyW(path + size - 1, gac_64);
        hr = enum_gac_assemblies(&asmenum->assemblies, pName, 0, ((void*)0), path);
        if (FAILED(hr))
            return hr;
    }
    lstrcpyW(path + size - 1, gac_32);
    hr = enum_gac_assemblies(&asmenum->assemblies, pName, 0, ((void*)0), path);
    if (FAILED(hr))
        return hr;

    lstrcpyW(path + size - 1, gac_msil);
    hr = enum_gac_assemblies(&asmenum->assemblies, pName, 0, ((void*)0), path);
    if (FAILED(hr))
        return hr;

    lstrcpyW(path + size - 1, gac);
    hr = enum_gac_assemblies(&asmenum->assemblies, pName, 0, ((void*)0), path);
    if (FAILED(hr))
        return hr;

    return S_OK;
}
