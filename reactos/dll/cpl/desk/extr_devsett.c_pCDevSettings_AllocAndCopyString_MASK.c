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
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int SIZE_T ;
typedef  int /*<<< orphan*/ * PWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  LMEM_FIXED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static PWSTR
FUNC4(const TCHAR *pszSrc)
{
    SIZE_T c;
    PWSTR str;

    c = FUNC3(pszSrc) + 1;
    str = (PWSTR)FUNC0(LMEM_FIXED,
                            c * sizeof(WCHAR));
    if (str != NULL)
    {
#ifdef UNICODE
        StringCbCopyW(str, c * sizeof(WCHAR),
               pszSrc);
#else
        FUNC1(CP_ACP,
                            0,
                            pszSrc,
                            -1,
                            str,
                            c);
#endif
    }

    return str;
}