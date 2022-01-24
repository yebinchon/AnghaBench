#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* displayname; char* name; char* procarch; char* culture; } ;
typedef  char* LPWSTR ;
typedef  char* LPCWSTR ;
typedef  TYPE_1__ IAssemblyNameImpl ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUSION_E_INVALID_NAME ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  culture ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 char* FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  procarch ; 
 int /*<<< orphan*/  pubkey ; 
 void* FUNC8 (char*) ; 
 int /*<<< orphan*/  version ; 
 char* FUNC9 (char*,char) ; 

__attribute__((used)) static HRESULT FUNC10(IAssemblyNameImpl *name, LPCWSTR szAssemblyName)
{
    LPWSTR str, save, ptr, ptr2, value;
    HRESULT hr = S_OK;
    BOOL done = FALSE;

    if (!szAssemblyName)
        return S_OK;

    name->displayname = FUNC8(szAssemblyName);
    if (!name->displayname)
        return E_OUTOFMEMORY;

    str = FUNC8(szAssemblyName);
    save = str;
    if (!str)
    {
        hr = E_OUTOFMEMORY;
        goto done;
    }

    ptr = FUNC9(str, ',');
    if (ptr) *ptr = '\0';

    /* no ',' but ' ' only */
    if( !ptr && FUNC9(str, ' ') )
    {
        hr = FUSION_E_INVALID_NAME;
        goto done;
    }

    name->name = FUNC8(str);
    if (!name->name)
    {
        hr = E_OUTOFMEMORY;
        goto done;
    }

    if (!ptr)
        goto done;

    str = ptr + 1;
    while (!done)
    {
        ptr = FUNC9(str, '=');
        if (!ptr)
        {
            hr = FUSION_E_INVALID_NAME;
            goto done;
        }

        *(ptr++) = '\0';
        if (!*ptr)
        {
            hr = FUSION_E_INVALID_NAME;
            goto done;
        }

        if (!(ptr2 = FUNC9(ptr, ',')))
        {
            if (!(ptr2 = FUNC9(ptr, '\0')))
            {
                hr = FUSION_E_INVALID_NAME;
                goto done;
            }

            done = TRUE;
        }

        *ptr2 = '\0';
        if (!(value = FUNC6( ptr, ptr2 - ptr )))
        {
            hr = FUSION_E_INVALID_NAME;
            goto done;
        }
        while (*str == ' ') str++;

        if (!FUNC2(str, version))
            hr = FUNC7( name, value );
        else if (!FUNC2(str, culture))
            hr = FUNC3( name, value );
        else if (!FUNC2(str, pubkey))
            hr = FUNC5( name, value );
        else if (!FUNC2(str, procarch))
        {
            name->procarch = value;
            value = NULL;

            hr = FUNC4( name, name->procarch );
        }
        FUNC1( value );

        if (FUNC0(hr))
            goto done;

        str = ptr2 + 1;
    }

done:
    FUNC1(save);
    if (FUNC0(hr))
    {
        FUNC1(name->displayname);
        FUNC1(name->name);
        FUNC1(name->culture);
        FUNC1(name->procarch);
    }
    return hr;
}