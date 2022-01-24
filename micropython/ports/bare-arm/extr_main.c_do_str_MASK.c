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
struct TYPE_6__ {scalar_t__ ret_val; } ;
typedef  TYPE_1__ nlr_buf_t ;
typedef  int /*<<< orphan*/  mp_parse_tree_t ;
typedef  int /*<<< orphan*/  mp_parse_input_kind_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;
struct TYPE_7__ {int /*<<< orphan*/  source_name; } ;
typedef  TYPE_2__ mp_lexer_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP_QSTR__lt_stdin_gt_ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mp_plat_print ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

void FUNC8(const char *src, mp_parse_input_kind_t input_kind) {
    nlr_buf_t nlr;
    if (FUNC6(&nlr) == 0) {
        mp_lexer_t *lex = FUNC2(MP_QSTR__lt_stdin_gt_, src, FUNC7(src), 0);
        qstr source_name = lex->source_name;
        mp_parse_tree_t parse_tree = FUNC4(lex, input_kind);
        mp_obj_t module_fun = FUNC1(&parse_tree, source_name, true);
        FUNC0(module_fun);
        FUNC5();
    } else {
        // uncaught exception
        FUNC3(&mp_plat_print, (mp_obj_t)nlr.ret_val);
    }
}