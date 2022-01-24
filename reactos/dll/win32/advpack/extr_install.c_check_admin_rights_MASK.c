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
struct TYPE_3__ {int /*<<< orphan*/  install_sec; int /*<<< orphan*/  hinf; } ;
typedef  int INT ;
typedef  int /*<<< orphan*/  INFCONTEXT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ ADVInfo ;

/* Variables and functions */
 int /*<<< orphan*/  CheckAdminRights ; 
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int*) ; 

__attribute__((used)) static HRESULT FUNC3(const ADVInfo *info)
{
    INT check;
    INFCONTEXT context;
    HRESULT hr = S_OK;

    if (!FUNC1(info->hinf, info->install_sec,
                             CheckAdminRights, &context))
        return S_OK;

    if (!FUNC2(&context, 1, &check))
        return S_OK;

    if (check == 1)
        hr = FUNC0(0, NULL) ? S_OK : E_FAIL;

    return hr;
}