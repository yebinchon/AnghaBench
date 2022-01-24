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
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  char* LPCWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,char*,char const*,char*) ; 

__attribute__((used)) static BOOL FUNC7(LPCWSTR file, LPWSTR buf, LPCWSTR index)
{
    static const WCHAR url_format[] =
        {'m','k',':','@','M','S','I','T','S','t','o','r','e',':','%','s',':',':','%','s','%','s',0};
    static const WCHAR slash[] = {'/',0};
    static const WCHAR empty[] = {0};
    WCHAR full_path[MAX_PATH];

    FUNC3("%s %p %s\n", FUNC5(file), buf, FUNC5(index));

    if (!FUNC1(file, FUNC0(full_path), full_path, NULL)) {
        FUNC4("GetFullPathName failed: %u\n", FUNC2());
        return FALSE;
    }

    FUNC6(buf, url_format, full_path, (!index || index[0] == '/') ? empty : slash, index);
    return TRUE;
}