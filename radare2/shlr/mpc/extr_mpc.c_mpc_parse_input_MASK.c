#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  error; int /*<<< orphan*/  output; } ;
typedef  TYPE_1__ mpc_result_t ;
typedef  int /*<<< orphan*/  mpc_parser_t ;
typedef  int /*<<< orphan*/  mpc_input_t ;
struct TYPE_10__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_2__ mpc_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(mpc_input_t *i, mpc_parser_t *p, mpc_result_t *r) {
  int x;
  mpc_err_t *e = FUNC2(i, "Unknown Error");
  e->state = FUNC6();
  x = FUNC5(i, p, r, &e);
  if (x) {
    FUNC0(i, e);
    r->output = FUNC4(i, r->output);
  } else {
    r->error = FUNC1(i, FUNC3(i, e, r->error));
  }
  return x;
}