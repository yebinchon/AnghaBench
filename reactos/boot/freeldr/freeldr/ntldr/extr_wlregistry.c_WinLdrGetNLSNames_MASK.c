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
typedef  int /*<<< orphan*/  szIdBuffer ;
typedef  char WCHAR ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  PUCHAR ;
typedef  int /*<<< orphan*/  PSTR ;
typedef  int /*<<< orphan*/  NameBuffer ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static BOOLEAN
FUNC4(PSTR AnsiName,
                  PSTR OemName,
                  PSTR LangName)
{
    LONG rc = ERROR_SUCCESS;
    HKEY hKey;
    WCHAR szIdBuffer[80];
    WCHAR NameBuffer[80];
    ULONG BufferSize;

    /* Open the CodePage key */
    rc = FUNC0(NULL,
        L"\\Registry\\Machine\\SYSTEM\\CurrentControlSet\\Control\\NLS\\CodePage",
        &hKey);
    if (rc != ERROR_SUCCESS)
    {
        //RtlStringCbCopyA(szErrorOut, sizeof(szErrorOut), "Couldn't open CodePage registry key");
        return FALSE;
    }

    /* Get ANSI codepage */
    BufferSize = sizeof(szIdBuffer);
    rc = FUNC1(hKey, L"ACP", NULL, (PUCHAR)szIdBuffer, &BufferSize);
    if (rc != ERROR_SUCCESS)
    {
        //RtlStringCbCopyA(szErrorOut, sizeof(szErrorOut), "Couldn't get ACP NLS setting");
        return FALSE;
    }

    BufferSize = sizeof(NameBuffer);
    rc = FUNC1(hKey, szIdBuffer, NULL, (PUCHAR)NameBuffer, &BufferSize);
    if (rc != ERROR_SUCCESS)
    {
        //RtlStringCbCopyA(szErrorOut, sizeof(szErrorOut), "ACP NLS Setting exists, but isn't readable");
        //return FALSE;
        FUNC3(NameBuffer, L"c_1252.nls"); // HACK: ReactOS bug CORE-6105
    }
    FUNC2(AnsiName, "%S", NameBuffer);

    /* Get OEM codepage */
    BufferSize = sizeof(szIdBuffer);
    rc = FUNC1(hKey, L"OEMCP", NULL, (PUCHAR)szIdBuffer, &BufferSize);
    if (rc != ERROR_SUCCESS)
    {
        //RtlStringCbCopyA(szErrorOut, sizeof(szErrorOut), "Couldn't get OEMCP NLS setting");
        return FALSE;
    }

    BufferSize = sizeof(NameBuffer);
    rc = FUNC1(hKey, szIdBuffer, NULL, (PUCHAR)NameBuffer, &BufferSize);
    if (rc != ERROR_SUCCESS)
    {
        //RtlStringCbCopyA(szErrorOut, sizeof(szErrorOut), "OEMCP NLS setting exists, but isn't readable");
        //return FALSE;
        FUNC3(NameBuffer, L"c_437.nls"); // HACK: ReactOS bug CORE-6105
    }
    FUNC2(OemName, "%S", NameBuffer);

    /* Open the Language key */
    rc = FUNC0(NULL,
        L"\\Registry\\Machine\\SYSTEM\\CurrentControlSet\\Control\\NLS\\Language",
        &hKey);
    if (rc != ERROR_SUCCESS)
    {
        //RtlStringCbCopyA(szErrorOut, sizeof(szErrorOut), "Couldn't open Language registry key");
        return FALSE;
    }

    /* Get the Unicode case table */
    BufferSize = sizeof(szIdBuffer);
    rc = FUNC1(hKey, L"Default", NULL, (PUCHAR)szIdBuffer, &BufferSize);
    if (rc != ERROR_SUCCESS)
    {
        //RtlStringCbCopyA(szErrorOut, sizeof(szErrorOut), "Couldn't get Language Default setting");
        return FALSE;
    }

    BufferSize = sizeof(NameBuffer);
    rc = FUNC1(hKey, szIdBuffer, NULL, (PUCHAR)NameBuffer, &BufferSize);
    if (rc != ERROR_SUCCESS)
    {
        //RtlStringCbCopyA(szErrorOut, sizeof(szErrorOut), "Language Default setting exists, but isn't readable");
        return FALSE;
    }
    FUNC2(LangName, "%S", NameBuffer);

    return TRUE;
}