#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int type; } ;
typedef  TYPE_1__ lnet_userdata ;

/* Variables and functions */
 char** NET_TABLES ; 
#define  TYPE_TCP_CLIENT 130 
#define  TYPE_TCP_SERVER 129 
#define  TYPE_UDP_SOCKET 128 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 

lnet_userdata *FUNC3( lua_State *L, int stack ) {
  if (!FUNC1(L, stack)) return NULL;
  lnet_userdata *ud = (lnet_userdata *)FUNC2(L, stack);
  switch (ud->type) {
    case TYPE_TCP_CLIENT:
    case TYPE_TCP_SERVER:
    case TYPE_UDP_SOCKET:
      break;
    default: return NULL;
  }
  const char *mt = NET_TABLES[ud->type];
  ud = FUNC0(L, stack, mt);
  return ud;
}