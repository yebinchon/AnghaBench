#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mpc_input_t ;
struct TYPE_9__ {scalar_t__ pos; } ;
struct TYPE_8__ {int expected_num; int /*<<< orphan*/ * expected; int /*<<< orphan*/  recieved; int /*<<< orphan*/ * failure; TYPE_2__ state; int /*<<< orphan*/ * filename; } ;
typedef  TYPE_1__ mpc_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static mpc_err_t *FUNC7(mpc_input_t *i, mpc_err_t** x, int n) {
  
  int j, k, fst;
  mpc_err_t *e;
  
  fst = -1;
  for (j = 0; j < n; j++) {
    if (x[j] != NULL) { fst = j; }
  }
  
  if (fst == -1) { return NULL; }
  
  e = FUNC3(i, sizeof(mpc_err_t));
  e->state = FUNC4();
  e->expected_num = 0;
  e->expected = NULL;
  e->failure = NULL;
  e->filename = FUNC3(i, FUNC6(x[fst]->filename)+1);
  FUNC5(e->filename, x[fst]->filename);
  
  for (j = 0; j < n; j++) {
    if (!x[j]) { continue; }
    if (x[j]->state.pos > e->state.pos) { e->state = x[j]->state; }
  }
  
  for (j = 0; j < n; j++) {
    if (!x[j]) { continue; }
    if (x[j]->state.pos < e->state.pos) { continue; }
    
    if (x[j]->failure) {
      e->failure = FUNC3(i, FUNC6(x[j]->failure)+1);
      FUNC5(e->failure, x[j]->failure);
      break;
    }
    
    e->recieved = x[j]->recieved;
    
    for (k = 0; k < x[j]->expected_num; k++) {
      if (!FUNC1(i, e, x[j]->expected[k])) {
        FUNC0(i, e, x[j]->expected[k]);
      }
    }
  }
  
  for (j = 0; j < n; j++) {
    if (!x[j]) { continue; }
    FUNC2(i, x[j]);
  }
  
  return e;
}