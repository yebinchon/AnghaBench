#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_10__ {int /*<<< orphan*/  dwHighDateTime; int /*<<< orphan*/  dwLowDateTime; } ;
struct TYPE_8__ {int /*<<< orphan*/  HighPart; int /*<<< orphan*/  LowPart; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
typedef  int /*<<< orphan*/  SYSTEMTIME ;
typedef  TYPE_2__ LARGE_INTEGER ;
typedef  TYPE_3__ FILETIME ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DATE_SHORTDATE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOCALE_USER_DEFAULT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  StdOut ; 
 int /*<<< orphan*/  TIME_NOSECONDS ; 

__attribute__((used)) static
VOID
FUNC7(DWORD dwSeconds)
{
    LARGE_INTEGER Time;
    FILETIME FileTime;
    SYSTEMTIME SystemTime;
    WCHAR DateBuffer[80];
    WCHAR TimeBuffer[80];

    FUNC6(dwSeconds, &Time);
    FileTime.dwLowDateTime = Time.u.LowPart;
    FileTime.dwHighDateTime = Time.u.HighPart;
    FUNC2(&FileTime, &FileTime);
    FUNC3(&FileTime, &SystemTime);

    FUNC4(LOCALE_USER_DEFAULT,
                   DATE_SHORTDATE,
                   &SystemTime,
                   NULL,
                   DateBuffer,
                   FUNC0(DateBuffer));

    FUNC5(LOCALE_USER_DEFAULT,
                   TIME_NOSECONDS,
                   &SystemTime,
                   NULL,
                   TimeBuffer,
                   FUNC0(TimeBuffer));

    FUNC1(StdOut, L"%s %s", DateBuffer, TimeBuffer);
}