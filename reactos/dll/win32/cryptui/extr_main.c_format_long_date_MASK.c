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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  SYSTEMTIME ;
typedef  int /*<<< orphan*/  FILETIME ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  LOCALE_SLONGDATE ; 
 int /*<<< orphan*/  LOCALE_SYSTEM_DEFAULT ; 

__attribute__((used)) static WCHAR *FUNC6(const FILETIME *fileTime)
{
    WCHAR dateFmt[80]; /* long enough for LOCALE_SLONGDATE */
    DWORD len;
    WCHAR *buf = NULL;
    SYSTEMTIME sysTime;

    /* FIXME: format isn't quite right, want time too */
    FUNC3(LOCALE_SYSTEM_DEFAULT, LOCALE_SLONGDATE, dateFmt, FUNC0(dateFmt));
    FUNC1(fileTime, &sysTime);
    len = FUNC2(LOCALE_SYSTEM_DEFAULT, 0, &sysTime, dateFmt, NULL, 0);
    if (len)
    {
        buf = FUNC5(FUNC4(), 0, len * sizeof(WCHAR));
        if (buf)
            FUNC2(LOCALE_SYSTEM_DEFAULT, 0, &sysTime, dateFmt, buf,
             len);
    }
    return buf;
}