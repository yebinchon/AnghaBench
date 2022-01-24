#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  enum type_id { ____Placeholder_type_id } type_id ;
typedef  int /*<<< orphan*/  ITypeLib ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LIBID_NetFwPublicTypeLib ; 
 int /*<<< orphan*/  LOCALE_SYSTEM_DEFAULT ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * tid_id ; 
 int /*<<< orphan*/ ** typeinfo ; 
 int /*<<< orphan*/  typelib ; 

HRESULT FUNC9( enum type_id tid, ITypeInfo **ret )
{
    HRESULT hr;

    if (!typelib)
    {
        ITypeLib *lib;

        hr = FUNC7( &LIBID_NetFwPublicTypeLib, 1, 0, LOCALE_SYSTEM_DEFAULT, &lib );
        if (FUNC1(hr))
        {
            FUNC0("LoadRegTypeLib failed: %08x\n", hr);
            return hr;
        }
        if (FUNC6( (void **)&typelib, lib, NULL ))
            FUNC5( lib );
    }
    if (!typeinfo[tid])
    {
        ITypeInfo *info;

        hr = FUNC4( typelib, tid_id[tid], &info );
        if (FUNC1(hr))
        {
            FUNC0("GetTypeInfoOfGuid(%s) failed: %08x\n", FUNC8(tid_id[tid]), hr);
            return hr;
        }
        if (FUNC6( (void **)(typeinfo + tid), info, NULL ))
            FUNC3( info );
    }
    *ret = typeinfo[tid];
    FUNC2(typeinfo[tid]);
    return S_OK;
}