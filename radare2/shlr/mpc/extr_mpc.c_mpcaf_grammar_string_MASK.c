#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int flags; } ;
typedef  TYPE_1__ mpca_grammar_st_t ;
typedef  int /*<<< orphan*/  mpc_val_t ;
typedef  int /*<<< orphan*/  mpc_parser_t ;

/* Variables and functions */
 int MPCA_LANG_WHITESPACE_SENSITIVE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mpcf_str_ast ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static mpc_val_t *FUNC7(mpc_val_t *x, void *s) {
  mpca_grammar_st_t *st = s;
  char *y = FUNC6(x);
  mpc_parser_t *p = (st->flags & MPCA_LANG_WHITESPACE_SENSITIVE) ? FUNC2(y) : FUNC3(FUNC2(y));
  FUNC0(y);
  return FUNC4(FUNC5(FUNC1(p, mpcf_str_ast), "string"));
}