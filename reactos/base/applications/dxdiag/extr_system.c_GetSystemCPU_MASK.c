#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {int wProcessorArchitecture; } ;
typedef  TYPE_1__ SYSTEM_INFO ;
typedef  int /*<<< orphan*/  (* ISWOW64PROC ) (int /*<<< orphan*/ ,scalar_t__*) ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
#define  PROCESSOR_ARCHITECTURE_AMD64 131 
#define  PROCESSOR_ARCHITECTURE_ARM 130 
#define  PROCESSOR_ARCHITECTURE_IA64 129 
#define  PROCESSOR_ARCHITECTURE_INTEL 128 
 int PROCESSOR_ARCHITECTURE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

VOID FUNC6(WCHAR *szBuffer)
{
    SYSTEM_INFO archInfo;
    ISWOW64PROC fnIsWow64Process;
    BOOL isWow64 = FALSE;

    /* Find out if the program is running through WOW64 or not. Apparently,
    IsWow64Process() is not available on all versions of Windows, so the function
    has to be imported at runtime. If the function cannot be found, then assume
    the program is not running in WOW64. */
    fnIsWow64Process = (ISWOW64PROC)FUNC3(
        FUNC1(L"kernel32"), "IsWow64Process");
    
    if (fnIsWow64Process != NULL)
        fnIsWow64Process(FUNC0(), &isWow64);

    /* If the program is compiled as 32-bit, but is running in WOW64, it will
    automatically report as 32-bit regardless of the actual system architecture.
    It detects whether or not the program is using WOW64 or not, and then
    uses GetNativeSystemInfo(). If it is, it will properly report the actual
    system architecture to the user. */
    if (isWow64)
        FUNC2(&archInfo);
    else
        FUNC4(&archInfo);

    /* Now check to see what the system architecture is */
    if(archInfo.wProcessorArchitecture != PROCESSOR_ARCHITECTURE_UNKNOWN)
    {
        switch(archInfo.wProcessorArchitecture)
        {
        case PROCESSOR_ARCHITECTURE_INTEL:
        {
            FUNC5(szBuffer, L"32-bit");
            break;
        }
        case PROCESSOR_ARCHITECTURE_AMD64:
        {
            FUNC5(szBuffer, L"64-bit");
            break;
        }
        case PROCESSOR_ARCHITECTURE_IA64:
        {
            FUNC5(szBuffer, L"Itanium");
            break;
        }
        case PROCESSOR_ARCHITECTURE_ARM:
        {
            FUNC5(szBuffer, L"ARM");
            break;
        }
        default:break;
        }
    }
}