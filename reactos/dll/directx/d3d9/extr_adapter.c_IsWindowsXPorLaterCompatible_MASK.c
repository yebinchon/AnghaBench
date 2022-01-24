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
struct TYPE_4__ {int dwOSVersionInfoSize; int dwMajorVersion; int dwMinorVersion; } ;
typedef  TYPE_1__ OSVERSIONINFOA ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static BOOL FUNC2()
{
    OSVERSIONINFOA osvi;

    FUNC1(&osvi, sizeof(OSVERSIONINFOA));
    osvi.dwOSVersionInfoSize = sizeof(OSVERSIONINFOA);

    if (FUNC0(&osvi) != 0)
    {
        return ( (osvi.dwMajorVersion > 5) ||
               ( (osvi.dwMajorVersion == 5) && (osvi.dwMinorVersion >= 1) ));
    }

    return FALSE;
}