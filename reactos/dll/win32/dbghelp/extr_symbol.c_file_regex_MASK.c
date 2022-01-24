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
typedef  int WCHAR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int*,int) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static WCHAR* FUNC4(const char* srcfile)
{
    WCHAR* mask;
    WCHAR* p;

    if (!srcfile || !*srcfile)
    {
        if (!(p = mask = FUNC1(FUNC0(), 0, 3 * sizeof(WCHAR)))) return NULL;
        *p++ = '?';
        *p++ = '#';
    }
    else
    {
        DWORD  sz = FUNC2(CP_ACP, 0, srcfile, -1, NULL, 0);
        WCHAR* srcfileW;

        /* FIXME: we use here the largest conversion for every char... could be optimized */
        p = mask = FUNC1(FUNC0(), 0, (5 * FUNC3(srcfile) + 1 + sz) * sizeof(WCHAR));
        if (!mask) return NULL;
        srcfileW = mask + 5 * FUNC3(srcfile) + 1;
        FUNC2(CP_ACP, 0, srcfile, -1, srcfileW, sz);

        while (*srcfileW)
        {
            switch (*srcfileW)
            {
            case '\\':
            case '/':
                *p++ = '[';
                *p++ = '\\';
                *p++ = '\\';
                *p++ = '/';
                *p++ = ']';
                break;
            case '.':
                *p++ = '?';
                break;
            default:
                *p++ = *srcfileW;
                break;
            }
            srcfileW++;
        }
    }
    *p = 0;
    return mask;
}