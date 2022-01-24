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
typedef  char WCHAR ;
struct TYPE_10__ {int /*<<< orphan*/  assemblies; } ;
struct TYPE_7__ {scalar_t__ wProcessorArchitecture; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
typedef  TYPE_3__ SYSTEM_INFO ;
typedef  int /*<<< orphan*/  IAssemblyName ;
typedef  TYPE_4__ IAssemblyEnumImpl ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ASM_CACHE_ROOT ; 
 int /*<<< orphan*/  ASM_CACHE_ROOT_EX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int MAX_PATH ; 
 scalar_t__ PROCESSOR_ARCHITECTURE_AMD64 ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

__attribute__((used)) static HRESULT FUNC5(IAssemblyEnumImpl *asmenum, IAssemblyName *pName)
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
    hr = FUNC1(ASM_CACHE_ROOT_EX, buf, &size);
    if (FUNC0(hr))
        return hr;

    FUNC4(path, buf);
    FUNC2(&info);
    if (info.u.s.wProcessorArchitecture == PROCESSOR_ARCHITECTURE_AMD64)
    {
        FUNC4(path + size - 1, gac_64);
        hr = FUNC3(&asmenum->assemblies, pName, 0, v40, path);
        if (FUNC0(hr))
            return hr;
    }
    FUNC4(path + size - 1, gac_32);
    hr = FUNC3(&asmenum->assemblies, pName, 0, v40, path);
    if (FUNC0(hr))
        return hr;

    FUNC4(path + size - 1, gac_msil);
    hr = FUNC3(&asmenum->assemblies, pName, 0, v40, path);
    if (FUNC0(hr))
        return hr;

    size = MAX_PATH;
    hr = FUNC1(ASM_CACHE_ROOT, buf, &size);
    if (FUNC0(hr))
        return hr;

    FUNC4(path, buf);
    if (info.u.s.wProcessorArchitecture == PROCESSOR_ARCHITECTURE_AMD64)
    {
        FUNC4(path + size - 1, gac_64);
        hr = FUNC3(&asmenum->assemblies, pName, 0, NULL, path);
        if (FUNC0(hr))
            return hr;
    }
    FUNC4(path + size - 1, gac_32);
    hr = FUNC3(&asmenum->assemblies, pName, 0, NULL, path);
    if (FUNC0(hr))
        return hr;

    FUNC4(path + size - 1, gac_msil);
    hr = FUNC3(&asmenum->assemblies, pName, 0, NULL, path);
    if (FUNC0(hr))
        return hr;

    FUNC4(path + size - 1, gac);
    hr = FUNC3(&asmenum->assemblies, pName, 0, NULL, path);
    if (FUNC0(hr))
        return hr;

    return S_OK;
}