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
typedef  int* LPWSTR ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IDS_INVALID_MACRO_DEF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pszExeName ; 
 char* szStringBuf ; 
 int* FUNC4 (int*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int*) ; 

__attribute__((used)) static INT FUNC6(LPWSTR definition)
{
    WCHAR *name, *nameend, *text, temp;

    name = definition;
    while (*name == L' ')
        name++;

    /* error if no '=' found */
    if ((nameend = FUNC4(name, L'=')) != NULL)
    {
        text = nameend + 1;
        while (*text == L' ')
            text++;

        while (nameend > name && nameend[-1] == L' ')
            nameend--;

        /* Split rest into name and substitute */
        temp = *nameend;
        *nameend = L'\0';
        /* Don't allow spaces in the name, since such a macro would be unusable */
        if (!FUNC4(name, L' ') && FUNC1(name, text, pszExeName))
            return 0;
        *nameend = temp;
    }

    FUNC3(FUNC2(NULL),
                IDS_INVALID_MACRO_DEF,
                szStringBuf,
                FUNC0(szStringBuf));
    FUNC5(szStringBuf, definition);
    return 1;
}