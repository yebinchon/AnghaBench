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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC5(lua_State *L) {
  int push_count = FUNC3(L, 2);
  if (push_count != 1) {
    FUNC1(L, "Internal error in sjson.deocder");
  }

  FUNC0(L, -1, "sjson.decoder");

  push_count = FUNC4(L, -1, 1);

  if (push_count != 1) {
    FUNC1(L, "Incomplete JSON object passed to sjson.decode");
  }

  // Now we have two items on the stack -- the udata and the result
  FUNC2(L, -2);

  return 1;
}