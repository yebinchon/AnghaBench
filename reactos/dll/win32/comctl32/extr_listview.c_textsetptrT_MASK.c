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
typedef  scalar_t__ LPWSTR ;
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ LPSTR_TEXTCALLBACKW ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC5(LPWSTR *dest, LPCWSTR src, BOOL isW)
{
    BOOL bResult = TRUE;
    
    if (src == LPSTR_TEXTCALLBACKW)
    {
	if (FUNC2(*dest)) FUNC0(*dest);
	*dest = LPSTR_TEXTCALLBACKW;
    }
    else
    {
	LPWSTR pszText = FUNC3(src, isW);
	if (*dest == LPSTR_TEXTCALLBACKW) *dest = NULL;
	bResult = FUNC1(dest, pszText);
	FUNC4(pszText, isW);
    }
    return bResult;
}