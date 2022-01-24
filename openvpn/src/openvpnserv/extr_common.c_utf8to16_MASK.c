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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

wchar_t *
FUNC2(const char *utf8)
{
    int n = FUNC0(CP_UTF8, 0, utf8, -1, NULL, 0);
    wchar_t *utf16 = FUNC1(n * sizeof(wchar_t));
    if (!utf16)
    {
        return NULL;
    }
    FUNC0(CP_UTF8, 0, utf8, -1, utf16, n);
    return utf16;
}