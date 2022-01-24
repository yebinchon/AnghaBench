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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  ROTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(lua_State *L, ROTable *rotable, TValue *key, TValue *val) {
  unsigned keypos;

  /* Special case: if key is nil, return the first element of the rotable */
  if (FUNC3(key))
    FUNC1(L, rotable, 0, key, val);
  else if (FUNC4(key)) {
    /* Find the previous key again */
    if (FUNC4(key)) {
      FUNC0(rotable, FUNC2(key), &keypos);
    }
    /* Advance to next key */
    keypos ++;
    FUNC1(L, rotable, keypos, key, val);
  }
}