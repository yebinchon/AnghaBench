#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int qstr ;
struct TYPE_3__ {int /*<<< orphan*/  ret_val; } ;
typedef  TYPE_1__ nlr_buf_t ;
typedef  int /*<<< orphan*/  mp_parse_tree_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;
typedef  int /*<<< orphan*/  mp_lexer_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP_PARSE_FILE_INPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

mp_obj_t FUNC7(const char *str) {
    nlr_buf_t nlr;
    if (FUNC5(&nlr) == 0) {
        qstr src_name = 1/*MP_QSTR_*/;
        mp_lexer_t *lex = FUNC2(src_name, str, FUNC6(str), false);
        mp_parse_tree_t pt = FUNC3(lex, MP_PARSE_FILE_INPUT);
        mp_obj_t module_fun = FUNC1(&pt, src_name, false);
        FUNC0(module_fun);
        FUNC4();
        return 0;
    } else {
        // uncaught exception
        return (mp_obj_t)nlr.ret_val;
    }
}