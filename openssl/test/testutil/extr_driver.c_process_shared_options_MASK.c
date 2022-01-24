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
typedef  int OPTION_CHOICE_DEFAULT ;

/* Variables and functions */
 int OPT_EOF ; 
#define  OPT_ERR 134 
#define  OPT_TEST_HELP 133 
#define  OPT_TEST_INDENT 132 
#define  OPT_TEST_ITERATION 131 
#define  OPT_TEST_LIST 130 
#define  OPT_TEST_SEED 129 
#define  OPT_TEST_SINGLE 128 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int level ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int show_list ; 
 int single_iter ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(void)
{
    OPTION_CHOICE_DEFAULT o;
    int value;
    int ret = -1;
    char *flag_test = "";
    char *flag_iter = "";
    char *testname = NULL;

    FUNC2();
    while ((o = FUNC6()) != OPT_EOF) {
        switch (o) {
        /* Ignore any test options at this level */
        default:
            break;
        case OPT_ERR:
            return ret;
        case OPT_TEST_HELP:
            FUNC4(FUNC8());
            return 0;
        case OPT_TEST_LIST:
            show_list = 1;
            break;
        case OPT_TEST_SINGLE:
            flag_test = FUNC3();
            testname = FUNC1();
            break;
        case OPT_TEST_ITERATION:
            flag_iter = FUNC3();
            if (!FUNC5(FUNC1(), &single_iter))
                goto end;
            break;
        case OPT_TEST_INDENT:
            if (!FUNC5(FUNC1(), &value))
                goto end;
            level = 4 * value;
            break;
        case OPT_TEST_SEED:
            if (!FUNC5(FUNC1(), &value))
                goto end;
            FUNC7(value);
            break;
        }
    }
    if (!FUNC0(testname, flag_test, flag_iter))
        goto end;
    ret = 1;
end:
    return ret;
}