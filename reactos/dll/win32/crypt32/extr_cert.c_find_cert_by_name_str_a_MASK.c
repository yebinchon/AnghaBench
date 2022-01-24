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
typedef  int /*<<< orphan*/ * PCCERT_CONTEXT ;
typedef  scalar_t__* LPWSTR ;
typedef  int /*<<< orphan*/  HCERTSTORE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  compare_cert_by_name_str ; 
 int /*<<< orphan*/  FUNC5 (void const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

__attribute__((used)) static PCCERT_CONTEXT FUNC8(HCERTSTORE store, DWORD dwType,
 DWORD dwFlags, const void *pvPara, PCCERT_CONTEXT prev)
{
    PCCERT_CONTEXT found = NULL;

    FUNC3("%s\n", FUNC5(pvPara));

    if (pvPara)
    {
        int len = FUNC2(CP_ACP, 0, pvPara, -1, NULL, 0);
        LPWSTR str = FUNC0(len * sizeof(WCHAR));

        if (str)
        {
            LPWSTR ptr;

            FUNC2(CP_ACP, 0, pvPara, -1, str, len);
            for (ptr = str; *ptr; ptr++)
                *ptr = FUNC7(*ptr);
            found = FUNC4(store, prev,
             compare_cert_by_name_str, dwType, dwFlags, str);
            FUNC1(str);
        }
    }
    else
        found = FUNC6(store, dwType, dwFlags, NULL, prev);
    return found;
}