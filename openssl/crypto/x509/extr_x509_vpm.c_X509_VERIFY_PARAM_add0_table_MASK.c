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
typedef  int /*<<< orphan*/  X509_VERIFY_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  param_cmp ; 
 int /*<<< orphan*/ * param_table ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC5(X509_VERIFY_PARAM *param)
{
    int idx;
    X509_VERIFY_PARAM *ptmp;
    if (param_table == NULL) {
        param_table = FUNC3(param_cmp);
        if (param_table == NULL)
            return 0;
    } else {
        idx = FUNC2(param_table, param);
        if (idx >= 0) {
            ptmp = FUNC1(param_table, idx);
            FUNC0(ptmp);
        }
    }
    if (!FUNC4(param_table, param))
        return 0;
    return 1;
}