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
typedef  scalar_t__ (* iterate_fields_func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/  INFCONTEXT ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HINF ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ E_FAIL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC7(HINF hinf, PCWSTR section, PCWSTR key,
                                      iterate_fields_func callback, void *arg)
{
    WCHAR static_buffer[200];
    WCHAR *buffer = static_buffer;
    DWORD size = FUNC0(static_buffer);
    INFCONTEXT context;
    HRESULT hr = E_FAIL;

    BOOL ok = FUNC3(hinf, section, key, &context);
    while (ok)
    {
        UINT i, count = FUNC5(&context);

        for (i = 1; i <= count; i++)
        {
            if (!(buffer = FUNC6(&context, i, buffer, static_buffer, &size)))
                goto done;

            if ((hr = callback(hinf, buffer, arg)) != S_OK)
                goto done;
        }

        ok = FUNC4(&context, key, &context);
    }

    hr = S_OK;

 done:
    if (buffer != static_buffer) FUNC2(FUNC1(), 0, buffer);
    return hr;
}