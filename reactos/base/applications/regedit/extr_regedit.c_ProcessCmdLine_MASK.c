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
typedef  scalar_t__ REGEDIT_ACTION ;
typedef  int* LPWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ACTION_ADD ; 
 scalar_t__ ACTION_DELETE ; 
 scalar_t__ ACTION_EXPORT ; 
 scalar_t__ ACTION_UNDEF ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MB_ICONINFORMATION ; 
 int MB_OK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  szTitle ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  usage ; 

BOOL FUNC6(LPWSTR lpCmdLine)
{
    BOOL silent = FALSE;
    REGEDIT_ACTION action = ACTION_UNDEF;
    LPWSTR s = lpCmdLine;       /* command line pointer */
    WCHAR ch = *s;              /* current character */

    while (ch && ((ch == L'-') || (ch == L'/')))
    {
        WCHAR chu;
        WCHAR ch2;

        s++;
        ch = *s;
        ch2 = *(s + 1);
        chu = FUNC5(ch);
        if (!ch2 || FUNC4(ch2))
        {
            if (chu == L'S')
            {
                /* Silence dialogs */
                silent = TRUE;
            }
            else if (chu == L'V')
            {
                /* Ignore this switch */
            }
            else
            {
                switch (chu)
                {
                    case L'D':
                        action = ACTION_DELETE;
                        break;
                    case L'E':
                        action = ACTION_EXPORT;
                        break;
                    case L'?':
                        FUNC0(NULL, MB_OK | MB_ICONINFORMATION, szTitle, usage);
                        FUNC3(3);
                        break;
                    default:
                        FUNC2(chu, s);
                        break;
                }
            }
            s++;
        }
        else
        {
            if (ch2 == L':')
            {
                switch (chu)
                {
                    case L'L':
                        /* fall through */
                    case L'R':
                        s += 2;
                        while (*s && !FUNC4(*s))
                        {
                            s++;
                        }
                        break;
                    default:
                        FUNC2(chu, s);
                        break;
                }
            }
            else
            {
                /* this is a file name, starting from '/' */
                s--;
                break;
            }
        }
        /* skip spaces to the next parameter */
        ch = *s;
        while (ch && FUNC4(ch))
        {
            s++;
            ch = *s;
        }
    }

    if (*s && action == ACTION_UNDEF)
        action = ACTION_ADD;

    if (action != ACTION_UNDEF)
        return FUNC1(action, s, silent);
    else
        return FALSE;
}