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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  smart_string ;

/* Variables and functions */
 scalar_t__ IS_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

smart_string *
FUNC10(smart_string *cmd, int argc, zval *z_args)
{
    int i;
    zend_string *zstr;

    if (FUNC5(z_args[0]) != IS_STRING) {
        return NULL;
    }
    // Branch based on the directive
    if (!FUNC7(FUNC4(z_args[0]), "flush") || !FUNC7(FUNC4(z_args[0]), "kill")) {
        // Simple SCRIPT FLUSH, or SCRIPT_KILL command
        FUNC0(cmd, argc, "SCRIPT");
        FUNC6(cmd, FUNC4(z_args[0]), FUNC3(z_args[0]));
    } else if (!FUNC7(FUNC4(z_args[0]), "load")) {
        // Make sure we have a second argument, and it's not empty.  If it is
        // empty, we can just return an empty array (which is what Redis does)
        if (argc < 2 || FUNC5(z_args[1]) != IS_STRING || FUNC3(z_args[1]) < 1) {
            return NULL;
        }
        // Format our SCRIPT LOAD command
        FUNC0(cmd, argc, "SCRIPT");
        FUNC6(cmd, "LOAD", sizeof("LOAD") - 1);
        FUNC6(cmd, FUNC4(z_args[1]), FUNC3(z_args[1]));
    } else if (!FUNC7(FUNC4(z_args[0]), "exists")) {
        // Make sure we have a second argument
        if (argc < 2) {
            return NULL;
        }
        /* Construct our SCRIPT EXISTS command */
        FUNC0(cmd, argc, "SCRIPT");
        FUNC6(cmd, "EXISTS", sizeof("EXISTS") - 1);

        for (i = 1; i < argc; ++i) {
            zstr = FUNC9(&z_args[i]);
            FUNC6(cmd, FUNC2(zstr), FUNC1(zstr));
            FUNC8(zstr);
        }
    } else {
        /* Unknown directive */
        return NULL;
    }
    return cmd;
}