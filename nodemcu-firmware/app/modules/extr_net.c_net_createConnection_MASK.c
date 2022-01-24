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
 int TYPE_TCP ; 
 int /*<<< orphan*/  TYPE_TCP_CLIENT ; 
 int TYPE_UDP ; 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6( lua_State *L ) {
  int type, secure;

  type = FUNC1(L, 1, TYPE_TCP);
  secure = FUNC1(L, 2, 0);

  if (type == TYPE_UDP) {
    FUNC4("net.createConnection with net.UDP type", "in next version");
    return FUNC3( L );
  }
  if (type != TYPE_TCP) return FUNC0(L, "invalid type");
  if (secure) {
    FUNC4("net.createConnection with secure flag", "in next version");
#ifdef TLS_MODULE_PRESENT
    return tls_socket_create( L );
#else
    return FUNC0(L, "secure connections not enabled");
#endif
  }
  FUNC2(L, TYPE_TCP_CLIENT);
  return 1;
}