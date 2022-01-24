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
typedef  int /*<<< orphan*/  SYSTEMTIME ;
typedef  char* LPCSTR ;
typedef  int /*<<< orphan*/  FILETIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOCALE_SSHORTDATE ; 
 int /*<<< orphan*/  LOCALE_SYSTEM_DEFAULT ; 
 char* FUNC4 (char*,char*) ; 

__attribute__((used)) static LPCSTR FUNC5(const FILETIME *time)
{
    char date[80];
    char dateFmt[80]; /* sufficient for all versions of LOCALE_SSHORTDATE */
    SYSTEMTIME sysTime;

    if (!time) return "(null)";

    FUNC3(LOCALE_SYSTEM_DEFAULT, LOCALE_SSHORTDATE, dateFmt, FUNC0(dateFmt));
    FUNC1(time, &sysTime);
    FUNC2(LOCALE_SYSTEM_DEFAULT, 0, &sysTime, dateFmt, date, FUNC0(date));
    return FUNC4("%s", date);
}