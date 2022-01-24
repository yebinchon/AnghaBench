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
typedef  scalar_t__ UINT ;
typedef  scalar_t__ LPWSTR ;
typedef  int /*<<< orphan*/  LONGLONG ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  IDS_BYTES_FORMAT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,char*,scalar_t__*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hInst ; 

UINT
FUNC3(LONGLONG cbSize, LPWSTR pwszResult, UINT cchResultMax)
{
    UINT cchWritten, cchRemaining;
    LPWSTR pwszEnd;
    size_t cchStringRemaining;

    /* Write formated bytes count */
    cchWritten = FUNC0(cbSize, pwszResult, cchResultMax);
    if (!cchWritten)
        return 0;

    /* Copy " bytes" to buffer */
    pwszEnd = pwszResult + cchWritten;
    cchRemaining = cchResultMax - cchWritten;
    FUNC2(pwszEnd, cchRemaining, L" ", &pwszEnd, &cchStringRemaining, 0);
    cchRemaining = (UINT)cchStringRemaining;
    cchWritten = FUNC1(hInst, IDS_BYTES_FORMAT, pwszEnd, cchRemaining);
    cchRemaining -= cchWritten;

    return cchResultMax - cchRemaining;
}