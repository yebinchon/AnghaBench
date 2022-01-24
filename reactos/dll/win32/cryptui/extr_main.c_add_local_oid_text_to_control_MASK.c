#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct OIDToString {int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  parFmt ;
typedef  char WCHAR ;
struct TYPE_3__ {int cbSize; int dxStartIndent; int /*<<< orphan*/  dwMask; } ;
typedef  TYPE_1__ PARAFORMAT2 ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  char* LPCSTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_STRING_LEN ; 
 int MY_INDENT ; 
 int /*<<< orphan*/  PFM_STARTINDENT ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 struct OIDToString* FUNC6 (char*) ; 
 int /*<<< orphan*/  hInstance ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int FUNC8 (char*) ; 
 int FUNC9 (char*) ; 
 char* FUNC10 (char*,char,int) ; 

__attribute__((used)) static void FUNC11(HWND text, LPCSTR oid)
{
    struct OIDToString *entry;
    WCHAR nl = '\n';
    PARAFORMAT2 parFmt;

    parFmt.cbSize = sizeof(parFmt);
    parFmt.dwMask = PFM_STARTINDENT;
    parFmt.dxStartIndent = MY_INDENT * 3;
    if ((entry = FUNC6(oid)))
    {
        WCHAR *str, *linebreak, *ptr;
        BOOL multiline = FALSE;
        int len;

        len = FUNC3(hInstance, entry->id, (LPWSTR)&str, 0);
        ptr = str;
        do {
            if ((linebreak = FUNC10(ptr, '\n', len)))
            {
                WCHAR copy[MAX_STRING_LEN];

                multiline = TRUE;
                /* The source string contains a newline, which the richedit
                 * control won't find since it's interpreted as a paragraph
                 * break.  Therefore copy up to the newline.  lstrcpynW always
                 * NULL-terminates, so pass one more than the length of the
                 * source line so the copy includes the entire line and the
                 * NULL-terminator.
                 */
                FUNC7(copy, ptr, linebreak - ptr + 1);
                FUNC4(text, copy,
                 linebreak - ptr, &parFmt);
                ptr = linebreak + 1;
                FUNC5(text, &nl, 1);
            }
            else if (multiline && *ptr)
            {
                /* Add the last line */
                FUNC4(text, ptr,
                 len - (ptr - str), &parFmt);
                FUNC5(text, &nl, 1);
            }
        } while (linebreak);
        if (!multiline)
        {
            FUNC4(text, str, len, &parFmt);
            FUNC5(text, &nl, 1);
        }
    }
    else
    {
        WCHAR *oidW = FUNC1(FUNC0(), 0,
         (FUNC9(oid) + 1) * sizeof(WCHAR));

        if (oidW)
        {
            LPCSTR src;
            WCHAR *dst;

            for (src = oid, dst = oidW; *src; src++, dst++)
                *dst = *src;
            *dst = 0;
            FUNC4(text, oidW, FUNC8(oidW),
             &parFmt);
            FUNC5(text, &nl, 1);
            FUNC2(FUNC0(), 0, oidW);
        }
    }
}