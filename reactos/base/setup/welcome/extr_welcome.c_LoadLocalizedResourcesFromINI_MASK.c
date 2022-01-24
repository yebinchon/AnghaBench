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
struct TYPE_3__ {scalar_t__* szArgs; scalar_t__* szDesc; scalar_t__* szTitle; scalar_t__* szText; scalar_t__* szCommand; } ;
typedef  TYPE_1__ TOPIC ;
typedef  scalar_t__ TCHAR ;
typedef  scalar_t__* LPTSTR ;
typedef  int /*<<< orphan*/  LCID ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 TYPE_1__* FUNC1 (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int BUFFER_SIZE ; 
 int /*<<< orphan*/  FALSE ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int FUNC2 (scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int INVALID_FILE_ATTRIBUTES ; 
 int LOCALE_NAME_MAX_LENGTH ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__* FUNC11 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*) ; 
 scalar_t__ FUNC13 (scalar_t__*) ; 
 scalar_t__ FUNC14 (scalar_t__*,scalar_t__*,int) ; 
 scalar_t__* szAppTitle ; 
 scalar_t__* szDefaultDesc ; 
 scalar_t__* szDefaultTitle ; 

__attribute__((used)) static BOOL
FUNC15(LCID Locale, LPTSTR lpResPath)
{
    DWORD dwRet;
    DWORD dwAttribs;
    DWORD dwSize;
    TCHAR szBuffer[LOCALE_NAME_MAX_LENGTH];
    TCHAR szIniPath[MAX_PATH];
    LPTSTR lpszSections = NULL, lpszSection = NULL;
    LPTSTR lpszCommand, lpszAction;
    TOPIC newTopic, *pTopic;

    /* Retrieve the locale name (on which the INI file name is based) */
    dwRet = (DWORD)FUNC3(Locale, szBuffer, FUNC0(szBuffer));
    if (!dwRet)
    {
        /* Fall back to english (US) */
        FUNC9(szBuffer, FUNC0(szBuffer), FUNC11("en-US"));
    }

    /* Build the INI file name */
    FUNC10(szIniPath, FUNC0(szIniPath),
                    FUNC11("%s\\%s.ini"), lpResPath, szBuffer);

    /* Verify that the file exists, otherwise fall back to english (US) */
    dwAttribs = FUNC2(szIniPath);
    if ((dwAttribs == INVALID_FILE_ATTRIBUTES) ||
        (dwAttribs & FILE_ATTRIBUTE_DIRECTORY))
    {
        FUNC9(szBuffer, FUNC0(szBuffer), FUNC11("en-US"));

        FUNC10(szIniPath, FUNC0(szIniPath),
                        FUNC11("%s\\%s.ini"), lpResPath, szBuffer);
    }

    /* Verify that the file exists, otherwise fall back to internal (localized) resource */
    dwAttribs = FUNC2(szIniPath);
    if ((dwAttribs == INVALID_FILE_ATTRIBUTES) ||
        (dwAttribs & FILE_ATTRIBUTE_DIRECTORY))
    {
        return FALSE; // For localized resources, see the general function.
    }

    /* Try to load the default localized strings */
    FUNC5(FUNC11("Defaults"), FUNC11("AppTitle"), FUNC11("ReactOS - Welcome") /* default */,
                            szAppTitle, FUNC0(szAppTitle), szIniPath);
    FUNC5(FUNC11("Defaults"), FUNC11("DefaultTopicTitle"), FUNC11("") /* default */,
                            szDefaultTitle, FUNC0(szDefaultTitle), szIniPath);
    if (!FUNC5(FUNC11("Defaults"), FUNC11("DefaultTopicDescription"), FUNC11("") /* default */,
                                 szDefaultDesc, FUNC0(szDefaultDesc), szIniPath))
    {
        *szDefaultDesc = 0;
    }
    else
    {
        FUNC12(szDefaultDesc);
    }

    /* Allocate a buffer big enough to hold all the section names */
    for (dwSize = BUFFER_SIZE; ; dwSize += BUFFER_SIZE)
    {
        lpszSections = FUNC7(FUNC6(), 0, dwSize * sizeof(TCHAR));
        if (!lpszSections)
            return TRUE; // FIXME!
        dwRet = FUNC4(lpszSections, dwSize, szIniPath);
        if (dwRet < dwSize - 2)
            break;
        FUNC8(FUNC6(), 0, lpszSections);
    }

    /* Loop over the sections and load the topics */
    lpszSection = lpszSections;
    for (; lpszSection && *lpszSection; lpszSection += (FUNC13(lpszSection) + 1))
    {
        /* Ignore everything that is not a topic */
        if (FUNC14(lpszSection, FUNC11("Topic"), 5) != 0)
            continue;

        lpszCommand = NULL, lpszAction = NULL;

        /* Retrieve the information */
        FUNC5(lpszSection, FUNC11("MenuText"), FUNC11("") /* default */,
                                newTopic.szText, FUNC0(newTopic.szText), szIniPath);
        FUNC5(lpszSection, FUNC11("Title"), FUNC11("") /* default */,
                                newTopic.szTitle, FUNC0(newTopic.szTitle), szIniPath);
        FUNC5(lpszSection, FUNC11("Description"), FUNC11("") /* default */,
                                newTopic.szDesc, FUNC0(newTopic.szDesc), szIniPath);

        FUNC5(lpszSection, FUNC11("ConfigCommand"), FUNC11("") /* default */,
                                newTopic.szCommand, FUNC0(newTopic.szCommand), szIniPath);

        /* Only care about command arguments if we actually have a command */
        if (*newTopic.szCommand)
        {
            lpszCommand = newTopic.szCommand;
            FUNC5(lpszSection, FUNC11("ConfigArgs"), FUNC11("") /* default */,
                                    newTopic.szArgs, FUNC0(newTopic.szArgs), szIniPath);
        }
        /* Only care about custom actions if we actually don't have a command */
        else // if (!*newTopic.szCommand)
        {
            lpszAction = newTopic.szCommand;
            FUNC5(lpszSection, FUNC11("Action"), FUNC11("") /* default */,
                                    newTopic.szCommand, FUNC0(newTopic.szCommand), szIniPath);
        }

        /* Allocate a new topic */
        pTopic = FUNC1(newTopic.szText,
                               newTopic.szTitle,
                               newTopic.szDesc,
                               lpszCommand,
                               newTopic.szArgs,
                               lpszAction);
        if (!pTopic)
            break; // Cannot reallocate more
    }

    FUNC8(FUNC6(), 0, lpszSections);

    return TRUE;
}