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
typedef  int UINT ;
typedef  int /*<<< orphan*/  TIME_ZONE_INFORMATION ;
typedef  int /*<<< orphan*/  SYSTEMTIME ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  FILETIME ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DATE_SHORTDATE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOCALE_USER_DEFAULT ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TIME_FORCE24HOURFORMAT ; 

BOOL
FUNC8(LPCWSTR pFullPath, WCHAR * szTime, int szTimeSize)
{
    HANDLE hFile;
    FILETIME AccessTime;
    SYSTEMTIME SysTime, LocalTime;
    UINT Length;
    TIME_ZONE_INFORMATION TimeInfo;

    hFile = FUNC1(pFullPath, GENERIC_READ, 0, NULL, OPEN_EXISTING, 0, NULL);
    if (!hFile)
        return FALSE;

    if (!FUNC4(hFile, NULL, NULL, &AccessTime))
    {
        FUNC0(hFile);
        return FALSE;
    }
    FUNC0(hFile);

    if(!FUNC6(&TimeInfo))
        return FALSE;

    if (!FUNC2(&AccessTime, &SysTime))
        return FALSE;

    if (!FUNC7(&TimeInfo, &SysTime, &LocalTime))
        return FALSE;

    Length = FUNC3(LOCALE_USER_DEFAULT, DATE_SHORTDATE, &LocalTime, NULL, szTime, szTimeSize);
    szTime[Length-1] = L' ';
    return FUNC5(LOCALE_USER_DEFAULT, TIME_FORCE24HOURFORMAT, &LocalTime, NULL, &szTime[Length], szTimeSize-Length);
}