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
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5( lua_State* L )
{
  int len, mask_len, i;
  const char* msg = FUNC2(L, 1, &len);
  const char* mask = FUNC2(L, 2, &mask_len);
  luaL_Buffer b;

  if(mask_len <= 0)
    return FUNC3(L, "invalid argument: mask");

  FUNC1(L, &b);
  for (i = 0; i < len; i++) {
    FUNC0(&b, msg[i] ^ mask[i % mask_len]);
  }

  FUNC4(&b);
  return 1;
}