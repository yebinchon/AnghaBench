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
typedef  int /*<<< orphan*/  zval ;
struct TYPE_6__ {char* c; int len; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ smart_string ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int FAILURE ; 
#define  IS_DOUBLE 130 
#define  IS_LONG 129 
#define  IS_STRING 128 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11(zval *z_args, int argc, char **cmd, int *cmd_len)
{
    smart_string cmdstr = {0};
    int i;

    /* Make sure our first argument is a string */
    if (FUNC4(z_args[0]) != IS_STRING) {
        FUNC6(NULL, E_WARNING,
            "When sending a 'raw' command, the first argument must be a string!");
        return FAILURE;
    }

    /* Initialize our command string */
    FUNC10(&cmdstr, argc-1, FUNC3(z_args[0]), FUNC2(z_args[0]));

    for (i = 1; i < argc; i++) {
       switch (FUNC4(z_args[i])) {
            case IS_STRING:
                FUNC7(&cmdstr, FUNC3(z_args[i]),
                    FUNC2(z_args[i]));
                break;
            case IS_LONG:
                FUNC9(&cmdstr,FUNC1(z_args[i]));
                break;
            case IS_DOUBLE:
                FUNC8(&cmdstr,FUNC0(z_args[i]));
                break;
            default:
                FUNC6(NULL, E_WARNING,
                    "Raw command arguments must be scalar values!");
                FUNC5(cmdstr.c);
                return FAILURE;
        }
    }

    /* Push command and length to caller */
    *cmd = cmdstr.c;
    *cmd_len = cmdstr.len;

    return SUCCESS;
}