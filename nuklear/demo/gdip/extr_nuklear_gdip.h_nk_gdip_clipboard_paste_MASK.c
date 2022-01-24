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
struct nk_text_edit {int dummy; } ;
typedef  int /*<<< orphan*/  nk_handle ;
typedef  int SIZE_T ;
typedef  scalar_t__ LPCWSTR ;
typedef  scalar_t__ HGLOBAL ;

/* Variables and functions */
 int /*<<< orphan*/  CF_UNICODETEXT ; 
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct nk_text_edit*,char*,int) ; 

__attribute__((used)) static void
FUNC11(nk_handle usr, struct nk_text_edit *edit)
{
    HGLOBAL mem;
    SIZE_T size;
    LPCWSTR wstr;
    int utf8size;
    char* utf8;
    (void)usr;

    if (!FUNC5(CF_UNICODETEXT) && FUNC6(NULL))
        return;

    mem = (HGLOBAL)FUNC1(CF_UNICODETEXT);
    if (!mem) {
        FUNC0();
        return;
    }

    size = FUNC3(mem) - 1;
    if (!size) {
        FUNC0();
        return;
    }

    wstr = (LPCWSTR)FUNC2(mem);
    if (!wstr) {
        FUNC0();
        return;
    }

    utf8size = FUNC7(CP_UTF8, 0, wstr, (int)(size / sizeof(wchar_t)), NULL, 0, NULL, NULL);
    if (!utf8size) {
        FUNC4(mem);
        FUNC0();
        return;
    }

    utf8 = (char*)FUNC9(utf8size);
    if (!utf8) {
        FUNC4(mem);
        FUNC0();
        return;
    }

    FUNC7(CP_UTF8, 0, wstr, (int)(size / sizeof(wchar_t)), utf8, utf8size, NULL, NULL);
    FUNC10(edit, utf8, utf8size);
    FUNC8(utf8);
    FUNC4(mem);
    FUNC0();
}