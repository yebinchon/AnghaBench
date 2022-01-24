#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dd ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int cb; int /*<<< orphan*/  DeviceName; } ;
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  TYPE_1__ DISPLAY_DEVICEW ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LMEM_FIXED ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static PWSTR
FUNC4(const WCHAR *pszDisplayDevice)
{
    DISPLAY_DEVICEW dd;
    PWSTR str = NULL;

    dd.cb = sizeof(dd);
    if (FUNC0(pszDisplayDevice,
                            0,
                            &dd,
                            0))
    {
        str = FUNC1(LMEM_FIXED,
                         (FUNC3(dd.DeviceName) + 1) * sizeof(WCHAR));
        if (str != NULL)
        {
            FUNC2(str,
                   dd.DeviceName);
        }
    }

    return str;
}