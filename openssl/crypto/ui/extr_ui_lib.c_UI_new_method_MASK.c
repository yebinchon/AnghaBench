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
typedef  int /*<<< orphan*/  UI_METHOD ;
struct TYPE_6__ {int /*<<< orphan*/  ex_data; int /*<<< orphan*/  const* meth; int /*<<< orphan*/ * lock; } ;
typedef  TYPE_1__ UI ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_EX_INDEX_UI ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  UI_F_UI_NEW_METHOD ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

UI *FUNC7(const UI_METHOD *method)
{
    UI *ret = FUNC3(sizeof(*ret));

    if (ret == NULL) {
        FUNC6(UI_F_UI_NEW_METHOD, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    ret->lock = FUNC0();
    if (ret->lock == NULL) {
        FUNC6(UI_F_UI_NEW_METHOD, ERR_R_MALLOC_FAILURE);
        FUNC2(ret);
        return NULL;
    }

    if (method == NULL)
        method = FUNC4();
    if (method == NULL)
        method = FUNC5();
    ret->meth = method;

    if (!FUNC1(CRYPTO_EX_INDEX_UI, ret, &ret->ex_data)) {
        FUNC2(ret);
        return NULL;
    }
    return ret;
}