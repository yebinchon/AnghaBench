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
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ LUA_TFUNCTION ; 
 scalar_t__ LUA_TLIGHTFUNCTION ; 
 int /*<<< orphan*/  http_callback ; 
 scalar_t__ http_callback_registry ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8( lua_State *L )
{
  int length;
  const char * url     = FUNC1(L, 1, &length);
  const char * headers = NULL;
  const char * body    = NULL;

  // Check parameter
  if (url == NULL)
  {
    return FUNC2( L, "wrong arg type" );
  }

  if (FUNC5(L, 2))
  {
    headers = FUNC1(L, 2, &length);
  }
  if (FUNC5(L, 3))
  {
    body = FUNC1(L, 3, &length);
  }

  if (FUNC7(L, 4) == LUA_TFUNCTION || FUNC7(L, 4) == LUA_TLIGHTFUNCTION) {
    FUNC6(L, 4);  // copy argument (func) to the top of stack
    if (http_callback_registry != LUA_NOREF)
      FUNC4(L, LUA_REGISTRYINDEX, http_callback_registry);
    http_callback_registry = FUNC3(L, LUA_REGISTRYINDEX);
  }

  FUNC0(url, headers, body, http_callback);
  return 0;
}