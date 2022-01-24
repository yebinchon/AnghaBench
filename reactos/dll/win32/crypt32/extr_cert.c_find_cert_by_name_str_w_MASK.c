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
typedef  scalar_t__* LPCWSTR ;
typedef  int /*<<< orphan*/  HCERTSTORE ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,scalar_t__*) ; 
 int /*<<< orphan*/  compare_cert_by_name_str ; 
 int /*<<< orphan*/  FUNC4 (void const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (void const*) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

__attribute__((used)) static PCCERT_CONTEXT FUNC8(HCERTSTORE store, DWORD dwType,
 DWORD dwFlags, const void *pvPara, PCCERT_CONTEXT prev)
{
    PCCERT_CONTEXT found = NULL;

    FUNC2("%s\n", FUNC4(pvPara));

    if (pvPara)
    {
        DWORD len = FUNC6(pvPara);
        LPWSTR str = FUNC0((len + 1) * sizeof(WCHAR));

        if (str)
        {
            LPCWSTR src;
            LPWSTR dst;

            for (src = pvPara, dst = str; *src; src++, dst++)
                *dst = FUNC7(*src);
            *dst = 0;
           found = FUNC3(store, prev,
            compare_cert_by_name_str, dwType, dwFlags, str);
           FUNC1(str);
        }
    }
    else
        found = FUNC5(store, dwType, dwFlags, NULL, prev);
    return found;
}