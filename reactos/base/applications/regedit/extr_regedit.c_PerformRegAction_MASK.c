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
typedef  int REGEDIT_ACTION ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
#define  ACTION_ADD 132 
#define  ACTION_DELETE 131 
#define  ACTION_EXPORT 130 
 int /*<<< orphan*/  FUNC0 (int*) ; 
#define  IDCANCEL 129 
#define  IDNO 128 
 int /*<<< orphan*/  IDS_IMPORT_ERROR ; 
 int /*<<< orphan*/  IDS_IMPORT_OK ; 
 int /*<<< orphan*/  IDS_IMPORT_PROMPT ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,...) ; 
 int KEY_MAX_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int MB_ICONERROR ; 
 int MB_ICONINFORMATION ; 
 int MB_ICONWARNING ; 
 int MB_OK ; 
 int MB_YESNOCANCEL ; 
 int /*<<< orphan*/  REG_FORMAT_4 ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC3 (int*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  hInst ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * szTitle ; 
 char* usage ; 

BOOL FUNC12(REGEDIT_ACTION action, LPWSTR s, BOOL silent)
{
    switch (action)
    {
        case ACTION_ADD:
        {
            WCHAR szText[512];
            WCHAR filename[MAX_PATH];
            FILE *fp;

            FUNC10(&s, filename);
            if (!filename[0])
            {
                FUNC1(NULL, MB_OK | MB_ICONINFORMATION, NULL, L"No file name is specified.");
                FUNC1(NULL, MB_OK | MB_ICONINFORMATION, szTitle, usage);
                FUNC5(4);
            }

            while (filename[0])
            {
                /* Request import confirmation */
                if (!silent)
                {
                    int choice;

                    FUNC2(hInst, IDS_IMPORT_PROMPT, szText, FUNC0(szText));

                    choice = FUNC1(NULL, MB_YESNOCANCEL | MB_ICONWARNING, szTitle, szText, filename);

                    switch (choice)
                    {
                        case IDNO:
                            goto cont;
                        case IDCANCEL:
                            /* The cancel case is useful if the user is importing more than one registry file
                            at a time, and wants to back out anytime during the import process. This way, the
                            user doesn't have to resort to ending the regedit process abruptly just to cancel
                            the operation. */
                            return TRUE;
                        default:
                            break;
                    }
                }

                /* Open the file */
                fp = FUNC3(filename, L"r");

                /* Import it */
                if (fp == NULL || !FUNC11(fp))
                {
                    /* Error opening the file */
                    if (!silent)
                    {
                        FUNC2(hInst, IDS_IMPORT_ERROR, szText, FUNC0(szText));
                        FUNC1(NULL, MB_OK | MB_ICONERROR, szTitle, szText, filename);
                    }
                }
                else
                {
                    /* Show successful import */
                    if (!silent)
                    {
                        FUNC2(hInst, IDS_IMPORT_OK, szText, FUNC0(szText));
                        FUNC1(NULL, MB_OK | MB_ICONINFORMATION, szTitle, szText, filename);
                    }
                }

                /* Close the file */
                if (fp) FUNC7(fp);

cont:
                FUNC10(&s, filename);
            }
            break;
        }

        case ACTION_DELETE:
        {
            WCHAR reg_key_name[KEY_MAX_LEN];
            FUNC10(&s, reg_key_name);
            if (!reg_key_name[0])
            {
                FUNC1(NULL, MB_OK | MB_ICONINFORMATION, NULL, L"No registry key is specified for removal.");
                FUNC1(NULL, MB_OK | MB_ICONINFORMATION, szTitle, usage);
                FUNC5(6);
            }
            FUNC4(reg_key_name);
            break;
        }

        case ACTION_EXPORT:
        {
            WCHAR filename[MAX_PATH];

            filename[0] = L'\0';
            FUNC10(&s, filename);
            if (!filename[0])
            {
                FUNC1(NULL, MB_OK | MB_ICONINFORMATION, NULL, L"No file name is specified.");
                FUNC1(NULL, MB_OK | MB_ICONINFORMATION, szTitle, usage);
                FUNC5(7);
            }

            if (s[0])
            {
                WCHAR reg_key_name[KEY_MAX_LEN];
                FUNC10(&s, reg_key_name);
                FUNC6(filename, reg_key_name, REG_FORMAT_4);
            }
            else
            {
                FUNC6(filename, NULL, REG_FORMAT_4);
            }
            break;
        }

        default:
            FUNC8(stderr, L"%s: Unhandled action!\n", FUNC9());
            FUNC5(8);
            break;
    }

    return TRUE;
}