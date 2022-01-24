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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(HANDLE hFile, WCHAR *name)
{
    static const WCHAR fmt[] = {'\r','\n','[','%','s',']','\r','\n',0};
    WCHAR *buf;

    buf = FUNC1((FUNC2(name) + 7) * sizeof(WCHAR));
    FUNC3(buf, fmt, name);
    FUNC4(hFile, buf);
    FUNC0(buf);
}