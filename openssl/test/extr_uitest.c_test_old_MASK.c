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
typedef  int /*<<< orphan*/  pass ;
typedef  int /*<<< orphan*/  UI_METHOD ;
typedef  int /*<<< orphan*/  UI ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  UI_INPUT_FLAG_DEFAULT_PWD ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  test_pem_password_cb ; 

__attribute__((used)) static int FUNC10(void)
{
    UI_METHOD *ui_method = NULL;
    UI *ui = NULL;
    char defpass[] = "password";
    char pass[16];
    int ok = 0;

    if (!FUNC1(ui_method =
                  FUNC3( test_pem_password_cb, 0))
            || !FUNC1(ui = FUNC8(ui_method)))
        goto err;

    /* The wrapper passes the UI userdata as the callback userdata param */
    FUNC5(ui, defpass);

    if (!FUNC4(ui, "prompt", UI_INPUT_FLAG_DEFAULT_PWD,
                             pass, 0, sizeof(pass) - 1))
        goto err;

    switch (FUNC9(ui)) {
    case -2:
        FUNC0("test_old: UI process interrupted or cancelled");
        /* fall through */
    case -1:
        goto err;
    default:
        break;
    }

    if (FUNC2(pass, defpass))
        ok = 1;

 err:
    FUNC7(ui);
    FUNC6(ui_method);

    return ok;
}