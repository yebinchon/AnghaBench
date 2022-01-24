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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  IRegisteredTask ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  VARIANT_TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  enable_optW ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tn_optW ; 
 int /*<<< orphan*/  tr_optW ; 

__attribute__((used)) static int FUNC7(int argc, WCHAR *argv[])
{
    BOOL have_option = FALSE, enable = FALSE;
    const WCHAR *task_name = NULL;
    IRegisteredTask *task;
    HRESULT hres;

    while (argc) {
        if(!FUNC6(argv[0], tn_optW)) {
            if (argc < 2) {
                FUNC1("Missing /tn value\n");
                return 1;
            }

            if (task_name) {
                FUNC1("Duplicated /tn argument\n");
                return 1;
            }

            task_name = argv[1];
            argc -= 2;
            argv += 2;
        }else if (!FUNC6(argv[0], enable_optW)) {
            enable = TRUE;
            have_option = TRUE;
            argc--;
            argv++;
        }else if (!FUNC6(argv[0], tr_optW)) {
            if (argc < 2) {
                FUNC1("Missing /tr value\n");
                return 1;
            }

            FUNC1("Unsupported /tr option %s\n", FUNC4(argv[1]));
            have_option = TRUE;
            argc -= 2;
            argv += 2;
        }else {
            FUNC1("Unsupported arguments %s\n", FUNC4(argv[0]));
            return 1;
        }
    }

    if (!task_name) {
        FUNC1("Missing /tn option\n");
        return 1;
    }

    if (!have_option) {
        FUNC1("Missing change options\n");
        return 1;
    }

    task = FUNC5(task_name);
    if (!task)
        return 1;

    if (enable) {
        hres = FUNC3(task, VARIANT_TRUE);
        if (FUNC0(hres)) {
            FUNC2(task);
            FUNC1("put_Enabled failed: %08x\n", hres);
            return 1;
        }
    }

    FUNC2(task);
    return 0;
}