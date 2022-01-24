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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/  INFCONTEXT ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ HMODULE ;
typedef  int /*<<< orphan*/  HINF ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ E_FAIL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  LOAD_WITH_ALTERED_SEARCH_PATH ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MAX_INF_STRING_LENGTH ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC8(HINF hinf, PCWSTR field, const void *arg)
{
    HMODULE hm;
    INFCONTEXT context;
    HRESULT hr = S_OK;

    BOOL ok = FUNC4(hinf, field, NULL, &context);
    
    for (; ok; ok = FUNC5(&context, &context))
    {
        WCHAR buffer[MAX_INF_STRING_LENGTH];

        /* get OCX filename */
        if (!FUNC6(&context, 1, buffer, FUNC0(buffer), NULL))
            continue;

        hm = FUNC3(buffer, NULL, LOAD_WITH_ALTERED_SEARCH_PATH);
        if (hm)
        {
            if (FUNC7(hm, TRUE, NULL, NULL) != S_OK)
                hr = E_FAIL;

            FUNC2(hm);
        }
        else
            hr = E_FAIL;

        if (FUNC1(hr))
        {
            /* FIXME: display a message box */
            break;
        }
    }

    return hr;
}