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
typedef  scalar_t__ wchar_t ;
typedef  int /*<<< orphan*/  nk_handle ;
typedef  scalar_t__ HGLOBAL ;

/* Variables and functions */
 int /*<<< orphan*/  CF_UNICODETEXT ; 
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GMEM_MOVEABLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(nk_handle usr, const char *text, int len)
{
    (void)usr;
    if (!FUNC5(NULL)) {
        return;
    }

    int wsize = FUNC4(CP_UTF8, 0, text, len, NULL, 0);
    if (wsize) {
        HGLOBAL mem = FUNC1(GMEM_MOVEABLE, (wsize + 1) * sizeof(wchar_t));
        if (mem) {
            wchar_t *wstr = (wchar_t*)FUNC2(mem);
            if (wstr) {
                FUNC4(CP_UTF8, 0, text, len, wstr, wsize);
                wstr[wsize] = 0;
                FUNC3(mem);
                FUNC6(CF_UNICODETEXT, mem); 
            }
        }
    }

    FUNC0();
}