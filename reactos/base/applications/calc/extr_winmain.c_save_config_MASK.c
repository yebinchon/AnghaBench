#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  osvi ;
struct TYPE_5__ {int /*<<< orphan*/  usesep; int /*<<< orphan*/  layout; } ;
struct TYPE_4__ {int dwOSVersionInfoSize; int dwPlatformId; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_1__ OSVERSIONINFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
#define  VER_PLATFORM_WIN32_WINDOWS 129 
#define  VER_PLATFORM_WIN32s 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__ calc ; 

__attribute__((used)) static void FUNC5(void)
{
    TCHAR buf[32];
    OSVERSIONINFO osvi;

    osvi.dwOSVersionInfoSize = sizeof(osvi);
    FUNC0(&osvi);

    switch (osvi.dwPlatformId) {
    case VER_PLATFORM_WIN32s:
    case VER_PLATFORM_WIN32_WINDOWS:
        FUNC4(buf, FUNC3("%lu"), calc.layout);
        FUNC2(FUNC3("SciCalc"), FUNC3("layout"), buf);
        FUNC2(FUNC3("SciCalc"), FUNC3("UseSep"), (calc.usesep==TRUE) ? FUNC3("1") : FUNC3("0"));
        break;

    default: /* VER_PLATFORM_WIN32_NT */
        FUNC1(FUNC3("SOFTWARE\\Microsoft\\Calc"), FUNC3("layout"), calc.layout);
        FUNC1(FUNC3("SOFTWARE\\Microsoft\\Calc"), FUNC3("UseSep"), calc.usesep);
        break;
    }
}