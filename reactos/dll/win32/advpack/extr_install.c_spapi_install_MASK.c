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
struct TYPE_3__ {int /*<<< orphan*/  install_sec; int /*<<< orphan*/  hinf; int /*<<< orphan*/ * working_dir; } ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  TYPE_1__ ADVInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int SPINST_FILES ; 
 int SPINST_INIFILES ; 
 int SPINST_REGISTRY ; 
 int SPINST_REGSVR ; 
 int /*<<< orphan*/  SP_COPY_NEWER ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/ * SetupDefaultQueueCallbackW ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC5(const ADVInfo *info)
{
    BOOL ret;
    HRESULT res;
    PVOID context;

    context = FUNC2(NULL, INVALID_HANDLE_VALUE, 0, 0, NULL);
    if (!context)
        return FUNC0(FUNC1());

    ret = FUNC3(NULL, info->hinf, info->install_sec,
                                      SPINST_FILES, NULL, info->working_dir,
                                      SP_COPY_NEWER, SetupDefaultQueueCallbackW,
                                      context, NULL, NULL);
    if (!ret)
    {
        res = FUNC0(FUNC1());
        FUNC4(context);

        return res;
    }

    FUNC4(context);

    ret = FUNC3(NULL, info->hinf, info->install_sec,
                                      SPINST_INIFILES | SPINST_REGISTRY | SPINST_REGSVR,
                                      HKEY_LOCAL_MACHINE, NULL, 0,
                                      NULL, NULL, NULL, NULL);
    if (!ret)
        return FUNC0(FUNC1());

    return S_OK;
}