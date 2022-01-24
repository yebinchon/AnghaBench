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
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MB_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STD_OUTPUT_HANDLE ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (char const*) ; 
 scalar_t__ wshInteractive ; 

__attribute__((used)) static void FUNC10(const WCHAR *string)
{
    DWORD count, ret, len, lena;
    char *buf;

    if(wshInteractive) {
        static const WCHAR windows_script_hostW[] =
            {'W','i','n','d','o','w','s',' ','S','c','r','i','p','t',' ','H','o','s','t',0};
        FUNC3(NULL, string, windows_script_hostW, MB_OK);
        return;
    }

    len = FUNC9(string);
    ret = FUNC5(FUNC2(STD_OUTPUT_HANDLE), string, len, &count, NULL);
    if(ret) {
        static const WCHAR crnlW[] = {'\r','\n'};
        FUNC5(FUNC2(STD_OUTPUT_HANDLE), crnlW, FUNC0(crnlW), &count, NULL);
        return;
    }

    lena = FUNC4(FUNC1(), 0, string, len, NULL, 0, NULL, NULL);
    buf = FUNC7(len);
    if(!buf)
        return;

    FUNC4(FUNC1(), 0, string, len, buf, lena, NULL, NULL);
    FUNC6(FUNC2(STD_OUTPUT_HANDLE), buf, lena, &count, FALSE);
    FUNC8(buf);
    FUNC6(FUNC2(STD_OUTPUT_HANDLE), "\r\n", 2, &count, FALSE);
}