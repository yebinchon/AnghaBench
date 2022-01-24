#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  mt19937_state ;

/* Variables and functions */
 int MEXP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (unsigned long*,int) ; 

void FUNC6(unsigned long *pf, mt19937_state *state) {
  int i = MEXP - 1;
  mt19937_state *temp;

  temp = (mt19937_state *)FUNC1(1, sizeof(mt19937_state));

  while (FUNC5(pf, i) == 0)
    i--;

  if (i > 0) {
    FUNC2(temp, state);
    FUNC4(temp);
    i--;
    for (; i > 0; i--) {
      if (FUNC5(pf, i) != 0)
        FUNC0(temp, state);
      else
        ;
      FUNC4(temp);
    }
    if (FUNC5(pf, 0) != 0)
      FUNC0(temp, state);
    else
      ;
  } else if (i == 0)
    FUNC2(temp, state);
  else
    ;

  FUNC2(state, temp);
  FUNC3(temp);
}