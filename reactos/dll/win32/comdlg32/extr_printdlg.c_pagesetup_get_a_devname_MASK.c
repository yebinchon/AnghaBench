#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* dlgw; } ;
struct TYPE_7__ {TYPE_2__ u; scalar_t__ unicode; } ;
typedef  TYPE_3__ pagesetup_data ;
typedef  int /*<<< orphan*/  devnames_name ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {int /*<<< orphan*/  hDevNames; } ;
typedef  int /*<<< orphan*/  DEVNAMES ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static WCHAR *FUNC7(const pagesetup_data *data, devnames_name which)
{
    DEVNAMES *dn;
    WCHAR *name;

    dn = FUNC1(data->u.dlgw->hDevNames);
    if(data->unicode)
        name = FUNC6((WCHAR *)dn + FUNC5(dn, which));
    else
    {
        int len = FUNC4(CP_ACP, 0, (char*)dn + FUNC5(dn, which), -1, NULL, 0);
        name = FUNC3(FUNC0(), 0, len * sizeof(WCHAR));
        FUNC4(CP_ACP, 0, (char*)dn + FUNC5(dn, which), -1, name, len);
    }
    FUNC2(data->u.dlgw->hDevNames);
    return name;
}