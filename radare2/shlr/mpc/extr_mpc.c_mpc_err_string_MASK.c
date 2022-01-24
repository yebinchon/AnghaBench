#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ col; scalar_t__ row; } ;
struct TYPE_5__ {int expected_num; int /*<<< orphan*/  recieved; int /*<<< orphan*/ * expected; TYPE_1__ state; int /*<<< orphan*/  filename; int /*<<< orphan*/  failure; } ;
typedef  TYPE_2__ mpc_err_t ;

/* Variables and functions */
 char* FUNC0 (int,int) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*,int*,char*,...) ; 
 char* FUNC3 (char*,scalar_t__) ; 
 scalar_t__ FUNC4 (char*) ; 

char *FUNC5(mpc_err_t *x) {

  int i;  
  int pos = 0; 
  int max = 1023;
  char *buffer = FUNC0(1, 1024);
  
  if (x->failure) {
    FUNC2(buffer, &pos, &max,
    "%s: error: %s\n", x->filename, x->failure);
    return buffer;
  }
  
  FUNC2(buffer, &pos, &max, 
    "%s:%i:%i: error: expected ", x->filename, x->state.row+1, x->state.col+1);
  
  if (x->expected_num == 0) { FUNC2(buffer, &pos, &max, "ERROR: NOTHING EXPECTED"); }
  if (x->expected_num == 1) { FUNC2(buffer, &pos, &max, "%s", x->expected[0]); }
  if (x->expected_num >= 2) {
  
    for (i = 0; i < x->expected_num-2; i++) {
      FUNC2(buffer, &pos, &max, "%s, ", x->expected[i]);
    } 
    
    FUNC2(buffer, &pos, &max, "%s or %s", 
      x->expected[x->expected_num-2], 
      x->expected[x->expected_num-1]);
  }
  
  FUNC2(buffer, &pos, &max, " at ");
  FUNC2(buffer, &pos, &max, FUNC1(x->recieved));
  FUNC2(buffer, &pos, &max, "\n");
  
  return FUNC3(buffer, FUNC4(buffer) + 1);
}