#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char const* filename; int /*<<< orphan*/  state; scalar_t__ suppress; } ;
typedef  TYPE_1__ mpc_input_t ;
struct TYPE_8__ {int expected_num; int /*<<< orphan*/  recieved; int /*<<< orphan*/ * failure; void** expected; int /*<<< orphan*/  state; void* filename; } ;
typedef  TYPE_2__ mpc_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,char const*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static mpc_err_t *FUNC4(mpc_input_t *i, const char *expected) {
  mpc_err_t *x;
  if (i->suppress) { return NULL; }
  x = FUNC1(i, sizeof(mpc_err_t));
  x->filename = FUNC1(i, FUNC3(i->filename) + 1);
  FUNC2(x->filename, i->filename);
  x->state = i->state;
  x->expected_num = 1;
  x->expected = FUNC1(i, sizeof(char*));
  x->expected[0] = FUNC1(i, FUNC3(expected) + 1);
  FUNC2(x->expected[0], expected);
  x->failure = NULL;
  x->recieved = FUNC0(i);
  return x;
}