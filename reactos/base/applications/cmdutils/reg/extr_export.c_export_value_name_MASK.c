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

/* Variables and functions */
 char* FUNC0 (char*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 size_t FUNC3 (char const*) ; 
 size_t FUNC4 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static size_t FUNC6(HANDLE hFile, WCHAR *name, size_t len)
{
    static const WCHAR quoted_fmt[] = {'"','%','s','"','=',0};
    static const WCHAR default_name[] = {'@','=',0};
    size_t line_len;

    if (name && *name)
    {
        WCHAR *str = FUNC0(name, len, &line_len);
        WCHAR *buf = FUNC2((line_len + 4) * sizeof(WCHAR));
        line_len = FUNC4(buf, quoted_fmt, str);
        FUNC5(hFile, buf);
        FUNC1(buf);
        FUNC1(str);
    }
    else
    {
        line_len = FUNC3(default_name);
        FUNC5(hFile, default_name);
    }

    return line_len;
}