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
struct TYPE_3__ {char recieved; void* failure; int /*<<< orphan*/ * expected; scalar_t__ expected_num; int /*<<< orphan*/  state; void* filename; } ;
typedef  TYPE_1__ mpc_err_t ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*,char const*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static mpc_err_t *FUNC4(const char *filename, const char *failure) {
  mpc_err_t *x;
  x = FUNC0(sizeof(mpc_err_t));
  x->filename = FUNC0(FUNC3(filename) + 1);
  FUNC2(x->filename, filename);
  x->state = FUNC1();
  x->expected_num = 0;
  x->expected = NULL;
  x->failure = FUNC0(FUNC3(failure) + 1);
  FUNC2(x->failure, failure);
  x->recieved = ' ';
  return x;
}