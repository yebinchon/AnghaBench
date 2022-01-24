#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qstr ;
struct TYPE_6__ {int /*<<< orphan*/  ret_val; } ;
typedef  TYPE_1__ nlr_buf_t ;
typedef  int /*<<< orphan*/  mp_parse_tree_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;
struct TYPE_7__ {int /*<<< orphan*/  source_name; } ;
typedef  TYPE_2__ mp_lexer_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP_PARSE_FILE_INPUT ; 
 int /*<<< orphan*/  MP_QSTR__lt_stdin_gt_ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  heap_end ; 
 int /*<<< orphan*/  heap_start ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mp_plat_print ; 
 int /*<<< orphan*/  mp_sys_argv ; 
 int /*<<< orphan*/  mp_sys_path ; 
 int /*<<< orphan*/  mp_type_SystemExit ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 scalar_t__ FUNC17 () ; 

void FUNC18(const char *src) {
    // To provide clean room for each test, interpreter and heap are
    // reinitialized before running each.
    FUNC0(heap_start, heap_end);
    FUNC4();
    FUNC8(mp_sys_path, 0);
    FUNC8(mp_sys_argv, 0);

    nlr_buf_t nlr;
    if (FUNC12(&nlr) == 0) {
        mp_lexer_t *lex = FUNC5(MP_QSTR__lt_stdin_gt_, src, FUNC13(src), 0);
        qstr source_name = lex->source_name;
        mp_parse_tree_t parse_tree = FUNC10(lex, MP_PARSE_FILE_INPUT);
        mp_obj_t module_fun = FUNC2(&parse_tree, source_name, false);
        FUNC1(module_fun);
        FUNC11();
    } else {
        mp_obj_t exc = (mp_obj_t)nlr.ret_val;
        if (FUNC7(FUNC6(exc), &mp_type_SystemExit)) {
            // Assume that sys.exit() is called to skip the test.
            // TODO: That can be always true, we should set up convention to
            // use specific exit code as skip indicator.
            FUNC15();
            goto end;
        }
        FUNC9(&mp_plat_print, exc);
        FUNC16("Uncaught exception\n");
    }

    if (FUNC17()) {
        FUNC14();
    }

end:
    FUNC3();
}