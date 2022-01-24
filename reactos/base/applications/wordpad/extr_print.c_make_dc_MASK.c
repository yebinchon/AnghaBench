#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ wDeviceOffset; scalar_t__ wDriverOffset; } ;
typedef  scalar_t__ LPWSTR ;
typedef  TYPE_1__* LPDEVNAMES ;
typedef  TYPE_1__* LPDEVMODEW ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ devMode ; 
 scalar_t__ devNames ; 

__attribute__((used)) static HDC FUNC3(void)
{
    if(devNames && devMode)
    {
        LPDEVNAMES dn = FUNC1(devNames);
        LPDEVMODEW dm = FUNC1(devMode);
        HDC ret;

        ret = FUNC0((LPWSTR)dn + dn->wDriverOffset,
                         (LPWSTR)dn + dn->wDeviceOffset, 0, dm);

        FUNC2(dn);
        FUNC2(dm);

        return ret;
    } else
    {
        return 0;
    }
}