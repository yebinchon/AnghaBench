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
typedef  void* TCHAR ;
typedef  void** LPTSTR ;
typedef  void** LPCTSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int CMDLINE_LENGTH ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (void**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC2 (char) ; 
 void** FUNC3 (void**,void*) ; 
 int /*<<< orphan*/  FUNC4 (void**,void**) ; 
 int /*<<< orphan*/  FUNC5 (void**) ; 
 int /*<<< orphan*/  FUNC6 (void**,void**,size_t) ; 
 int /*<<< orphan*/  FUNC7 (void**) ; 

BOOL
FUNC8 (LPCTSTR pFileName, LPTSTR pFullName, LPTSTR pPathExt, LPTSTR pDirectory)
{
    TCHAR  szPathBuffer[CMDLINE_LENGTH], *pszPathEnd;
    LPTSTR s,f;
    /* initialize full name buffer */
    *pFullName = FUNC2('\0');

    FUNC1 ("SearchForExecutableSingle: \'%s\' in dir: \'%s\'\n",
        FUNC7(pFileName), FUNC7(pDirectory));

    pszPathEnd = szPathBuffer;
    if (pDirectory != NULL)
    {
        FUNC4(szPathBuffer, pDirectory);
        pszPathEnd += FUNC5(pszPathEnd);
        *pszPathEnd++ = FUNC2('\\');
    }
    FUNC4(pszPathEnd, pFileName);
    pszPathEnd += FUNC5(pszPathEnd);

    if (FUNC0 (szPathBuffer))
    {
        FUNC1 ("Found: \'%s\'\n", FUNC7(szPathBuffer));
        FUNC4 (pFullName, szPathBuffer);
        return TRUE;
    }

    s = pPathExt;
    while (s && *s)
    {
        f = FUNC3 (s, FUNC2(';'));

        if (f)
        {
            FUNC6 (pszPathEnd, s, (size_t)(f-s));
            pszPathEnd[f-s] = FUNC2('\0');
            s = f + 1;
        }
        else
        {
            FUNC4 (pszPathEnd, s);
            s = NULL;
        }

        if (FUNC0 (szPathBuffer))
        {
            FUNC1 ("Found: \'%s\'\n", FUNC7(szPathBuffer));
            FUNC4 (pFullName, szPathBuffer);
            return TRUE;
        }
    }
    return FALSE;
}