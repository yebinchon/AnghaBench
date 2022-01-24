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
typedef  int /*<<< orphan*/  mpca_grammar_st_t ;
typedef  int /*<<< orphan*/  mpc_val_t ;
struct TYPE_6__ {scalar_t__ name; } ;
typedef  TYPE_1__ mpc_parser_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,scalar_t__) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mpc_val_t *FUNC5(mpc_val_t *x, void *s) {
  
  mpca_grammar_st_t *st = s;
  mpc_parser_t *p = FUNC2(x, st);
  FUNC0(x);

  if (p->name) {
    return FUNC4(FUNC3(FUNC1(p, p->name)));
  } else {
    return FUNC4(FUNC3(p));
  }
}