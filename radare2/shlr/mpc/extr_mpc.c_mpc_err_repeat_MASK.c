#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mpc_input_t ;
struct TYPE_4__ {int expected_num; char** expected; } ;
typedef  TYPE_1__ mpc_err_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char**,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 size_t FUNC6 (char const*) ; 

__attribute__((used)) static mpc_err_t *FUNC7(mpc_input_t *i, mpc_err_t *x, const char *prefix) {

  int j = 0;
  size_t l = 0;
  char *expect = NULL;
  
  if (!x) { return NULL; }
  
  if (x->expected_num == 0) {
    expect = FUNC0(i, 1, 1);
    x->expected_num = 1;
    x->expected = FUNC3(i, x->expected, sizeof(char*) * x->expected_num);
    x->expected[0] = expect;
    return x;
  }
  
  else if (x->expected_num == 1) {
    expect = FUNC2(i, FUNC6(prefix) + FUNC6(x->expected[0]) + 1);
    FUNC5(expect, prefix);
    FUNC4(expect, x->expected[0]);
    FUNC1(i, x->expected[0]);
    x->expected[0] = expect;
    return x;
  }
  
  else if (x->expected_num > 1) {
    
    l += FUNC6(prefix);
    for (j = 0; j < x->expected_num-2; j++) {
      l += FUNC6(x->expected[j]) + FUNC6(", ");
    }
    l += FUNC6(x->expected[x->expected_num-2]);
    l += FUNC6(" or ");
    l += FUNC6(x->expected[x->expected_num-1]);
    
    expect = FUNC2(i, l + 1);
    
    FUNC5(expect, prefix);
    for (j = 0; j < x->expected_num-2; j++) {
      FUNC4(expect, x->expected[j]); FUNC4(expect, ", ");
    }
    FUNC4(expect, x->expected[x->expected_num-2]);
    FUNC4(expect, " or ");
    FUNC4(expect, x->expected[x->expected_num-1]);

    for (j = 0; j < x->expected_num; j++) { FUNC1(i, x->expected[j]); }
    
    x->expected_num = 1;
    x->expected = FUNC3(i, x->expected, sizeof(char*) * x->expected_num);
    x->expected[0] = expect;
    return x;
  }
  
  return NULL;
}