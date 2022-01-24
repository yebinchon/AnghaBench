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
typedef  int /*<<< orphan*/  ITaskFolder ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  f_optW ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tn_optW ; 

__attribute__((used)) static int FUNC10(int argc, WCHAR *argv[])
{
    const WCHAR *task_name = NULL;
    ITaskFolder *root = NULL;
    BSTR str;
    HRESULT hres;

    while (argc) {
        if (!FUNC9(argv[0], f_optW)) {
            FUNC6("force opt\n");
            argc--;
            argv++;
        }else if(!FUNC9(argv[0], tn_optW)) {
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
        }else {
            FUNC1("Unsupported argument %s\n", FUNC7(argv[0]));
            return 1;
        }
    }

    if (!task_name) {
        FUNC1("Missing /tn argument\n");
        return 1;
    }

    root = FUNC8();
    if (!root)
        return 1;

    str = FUNC4(task_name);
    hres = FUNC2(root, str, 0);
    FUNC5(str);
    FUNC3(root);
    if (FUNC0(hres))
        return 1;

    return 0;
}