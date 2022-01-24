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
 int* bytes64 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4( lua_State* L )
{
  int len, i;
  const char* msg = FUNC2(L, 1, &len);
  luaL_Buffer out;

  FUNC1(L, &out);
  for (i = 0; i < len; i += 3) {
    int a = msg[i];
    int b = (i + 1 < len) ? msg[i + 1] : 0;
    int c = (i + 2 < len) ? msg[i + 2] : 0;
    FUNC0(&out, bytes64[a >> 2]);
    FUNC0(&out, bytes64[((a & 3) << 4) | (b >> 4)]);
    FUNC0(&out, (i + 1 < len) ? bytes64[((b & 15) << 2) | (c >> 6)] : 61);
    FUNC0(&out, (i + 2 < len) ? bytes64[(c & 63)] : 61);
  }
  FUNC3(&out);
  return 1;
}