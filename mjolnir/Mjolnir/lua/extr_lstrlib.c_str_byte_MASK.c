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
typedef  int lua_Integer ;

/* Variables and functions */
 int INT_MAX ; 
 char* FUNC0 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char const) ; 

__attribute__((used)) static int FUNC7 (lua_State *L) {
  size_t l;
  const char *s = FUNC0(L, 1, &l);
  lua_Integer posi = FUNC5(FUNC3(L, 2, 1), l);
  lua_Integer pose = FUNC5(FUNC3(L, 3, posi), l);
  int n, i;
  if (posi < 1) posi = 1;
  if (pose > (lua_Integer)l) pose = l;
  if (posi > pose) return 0;  /* empty interval; return no values */
  if (pose - posi >= INT_MAX)  /* arithmetic overflow? */
    return FUNC2(L, "string slice too long");
  n = (int)(pose -  posi) + 1;
  FUNC1(L, n, "string slice too long");
  for (i=0; i<n; i++)
    FUNC4(L, FUNC6(s[posi+i-1]));
  return n;
}