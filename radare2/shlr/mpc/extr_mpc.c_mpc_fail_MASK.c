#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  m; } ;
struct TYPE_7__ {TYPE_1__ fail; } ;
struct TYPE_8__ {TYPE_2__ data; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ mpc_parser_t ;

/* Variables and functions */
 int /*<<< orphan*/  MPC_TYPE_FAIL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_3__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 

mpc_parser_t *FUNC4(const char *m) {
  mpc_parser_t *p = FUNC1();
  p->type = MPC_TYPE_FAIL;
  p->data.fail.m = FUNC0(FUNC3(m) + 1);
  FUNC2(p->data.fail.m, m);
  return p;
}