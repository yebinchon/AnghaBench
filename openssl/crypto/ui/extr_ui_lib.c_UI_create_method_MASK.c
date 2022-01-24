#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* name; int /*<<< orphan*/  ex_data; } ;
typedef  TYPE_1__ UI_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_EX_INDEX_UI_METHOD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (char const*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  UI_F_UI_CREATE_METHOD ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

UI_METHOD *FUNC5(const char *name)
{
    UI_METHOD *ui_method = NULL;

    if ((ui_method = FUNC3(sizeof(*ui_method))) == NULL
        || (ui_method->name = FUNC2(name)) == NULL
        || !FUNC0(CRYPTO_EX_INDEX_UI_METHOD, ui_method,
                               &ui_method->ex_data)) {
        if (ui_method)
            FUNC1(ui_method->name);
        FUNC1(ui_method);
        FUNC4(UI_F_UI_CREATE_METHOD, ERR_R_MALLOC_FAILURE);
        return NULL;
    }
    return ui_method;
}