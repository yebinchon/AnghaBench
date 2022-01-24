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
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ REG_BINARY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 size_t FUNC2 (char const*) ; 
 size_t FUNC3 (char*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static size_t FUNC5(HANDLE hFile, DWORD type)
{
    static const WCHAR hex[] = {'h','e','x',':',0};
    static const WCHAR hexp_fmt[] = {'h','e','x','(','%','x',')',':',0};
    size_t line_len;

    if (type == REG_BINARY)
    {
        line_len = FUNC2(hex);
        FUNC4(hFile, hex);
    }
    else
    {
        WCHAR *buf = FUNC1(15 * sizeof(WCHAR));
        line_len = FUNC3(buf, hexp_fmt, type);
        FUNC4(hFile, buf);
        FUNC0(buf);
    }

    return line_len;
}