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
 int /*<<< orphan*/ * crypto_hexbytes ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4( lua_State* L)
{
  int len, i;
  const char* msg = FUNC2(L, 1, &len);
  luaL_Buffer out;

  FUNC1(L, &out);
  for (i = 0; i < len; i++) {
    FUNC0(&out, crypto_hexbytes[msg[i] >> 4]);
    FUNC0(&out, crypto_hexbytes[msg[i] & 0xf]);
  }
  FUNC3(&out);
  return 1;
}