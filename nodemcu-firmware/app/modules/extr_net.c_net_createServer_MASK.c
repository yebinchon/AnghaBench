#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int timeout; } ;
struct TYPE_5__ {TYPE_1__ server; } ;
typedef  TYPE_2__ lnet_userdata ;

/* Variables and functions */
 int TYPE_TCP ; 
 int /*<<< orphan*/  TYPE_TCP_SERVER ; 
 int TYPE_UDP ; 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

int FUNC5( lua_State *L ) {
  int type, timeout;

  type = FUNC1(L, 1, TYPE_TCP);
  timeout = FUNC1(L, 2, 30);

  if (type == TYPE_UDP) {
    FUNC4("net.createServer with net.UDP type", "in next version");
    return FUNC3( L );
  }
  if (type != TYPE_TCP) return FUNC0(L, "invalid type");

  lnet_userdata *u = FUNC2(L, TYPE_TCP_SERVER);
  u->server.timeout = timeout;
  return 1;
}