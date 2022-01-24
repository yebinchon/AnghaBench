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
struct TYPE_4__ {int cb_connect_ref; int cb_disconnect_ref; int cb_reconnect_ref; int cb_dns_ref; int cb_receive_ref; int cb_sent_ref; } ;
struct TYPE_5__ {int type; TYPE_1__ client; } ;
typedef  TYPE_2__ lnet_userdata ;

/* Variables and functions */
 int LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
#define  TYPE_TCP_CLIENT 129 
 int TYPE_TCP_SERVER ; 
#define  TYPE_UDP_SOCKET 128 
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 

int FUNC10( lua_State *L ) {
  lnet_userdata *ud = FUNC8(L);
  if (!ud || ud->type == TYPE_TCP_SERVER)
    return FUNC1(L, "invalid user data");
  int *refptr = NULL;
  const char *name = FUNC0(L, 2);
  if (!name) return FUNC1(L, "need callback name");
  switch (ud->type) {
    case TYPE_TCP_CLIENT:
      if (FUNC9("connection",name)==0)
        { refptr = &ud->client.cb_connect_ref; break; }
      if (FUNC9("disconnection",name)==0)
        { refptr = &ud->client.cb_disconnect_ref; break; }
      if (FUNC9("reconnection",name)==0)
        { refptr = &ud->client.cb_reconnect_ref; break; }
    case TYPE_UDP_SOCKET:
      if (FUNC9("dns",name)==0)
        { refptr = &ud->client.cb_dns_ref; break; }
      if (FUNC9("receive",name)==0)
        { refptr = &ud->client.cb_receive_ref; break; }
      if (FUNC9("sent",name)==0)
        { refptr = &ud->client.cb_sent_ref; break; }
      break;
    default: return FUNC1(L, "invalid user data");
  }
  if (refptr == NULL)
    return FUNC1(L, "invalid callback name");
  if (FUNC4(L, 3) || FUNC5(L, 3)) {
    FUNC7(L, 3);
    FUNC3(L, LUA_REGISTRYINDEX, *refptr);
    *refptr = FUNC2(L, LUA_REGISTRYINDEX);
  } else if (FUNC6(L, 3)) {
    FUNC3(L, LUA_REGISTRYINDEX, *refptr);
    *refptr = LUA_NOREF;
  } else {
    return FUNC1(L, "invalid callback function");
  }
  return 0;
}