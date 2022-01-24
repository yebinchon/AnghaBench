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
typedef  char WCHAR ;
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/  HINSTANCE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_STRING_LEN ; 
 int /*<<< orphan*/  STRING_ALL_FILES ; 
 int /*<<< orphan*/  STRING_DEFAULT_FILENAME ; 
 int /*<<< orphan*/  STRING_PROMPT_SAVE_CHANGES ; 
 int /*<<< orphan*/  STRING_RICHTEXT_FILES_RTF ; 
 int /*<<< orphan*/  STRING_TEXT_FILES_TXT ; 
 int /*<<< orphan*/  STRING_TEXT_FILES_UNICODE_TXT ; 
 int /*<<< orphan*/  STRING_UNITS_CM ; 
 int /*<<< orphan*/  STRING_UNITS_IN ; 
 int /*<<< orphan*/  STRING_UNITS_INCH ; 
 int /*<<< orphan*/  STRING_UNITS_PT ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char*) ; 
 char* units_cmW ; 
 char* units_inW ; 
 char* units_inchW ; 
 char* units_ptW ; 
 char* wszDefaultFileName ; 
 char* wszFilter ; 
 char* wszSaveChanges ; 

__attribute__((used)) static void FUNC4(void)
{
    LPWSTR p = wszFilter;
    static const WCHAR files_rtf[] = {'*','.','r','t','f','\0'};
    static const WCHAR files_txt[] = {'*','.','t','x','t','\0'};
    static const WCHAR files_all[] = {'*','.','*','\0'};

    HINSTANCE hInstance = FUNC0(0);

    FUNC1(hInstance, STRING_RICHTEXT_FILES_RTF, p, MAX_STRING_LEN);
    p += FUNC3(p) + 1;
    FUNC2(p, files_rtf);
    p += FUNC3(p) + 1;
    FUNC1(hInstance, STRING_TEXT_FILES_TXT, p, MAX_STRING_LEN);
    p += FUNC3(p) + 1;
    FUNC2(p, files_txt);
    p += FUNC3(p) + 1;
    FUNC1(hInstance, STRING_TEXT_FILES_UNICODE_TXT, p, MAX_STRING_LEN);
    p += FUNC3(p) + 1;
    FUNC2(p, files_txt);
    p += FUNC3(p) + 1;
    FUNC1(hInstance, STRING_ALL_FILES, p, MAX_STRING_LEN);
    p += FUNC3(p) + 1;
    FUNC2(p, files_all);
    p += FUNC3(p) + 1;
    *p = '\0';

    p = wszDefaultFileName;
    FUNC1(hInstance, STRING_DEFAULT_FILENAME, p, MAX_STRING_LEN);

    p = wszSaveChanges;
    FUNC1(hInstance, STRING_PROMPT_SAVE_CHANGES, p, MAX_STRING_LEN);

    FUNC1(hInstance, STRING_UNITS_CM, units_cmW, MAX_STRING_LEN);
    FUNC1(hInstance, STRING_UNITS_IN, units_inW, MAX_STRING_LEN);
    FUNC1(hInstance, STRING_UNITS_INCH, units_inchW, MAX_STRING_LEN);
    FUNC1(hInstance, STRING_UNITS_PT, units_ptW, MAX_STRING_LEN);
}